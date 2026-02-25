# pub.dev API について

> 参考: [pub.dev API for developers](https://pub.dev/help/api)

pub.dev は Dart / Flutter のパッケージリポジトリであり、開発者向けに REST API を公開しています。

---

## 概要

- ベースURL: `https://pub.dev/api/`
- レスポンス形式: JSON（一部 gzip 圧縮あり）
- 認証: Bearer トークン（パッケージ公開時のみ必要）
- **公式サポートAPI** はここに記載されたもののみ。それ以外のエンドポイントは予告なく変更・廃止される可能性がある。
- API の変更は [Dart announce](https://groups.google.com/a/dartlang.org/g/announce) で告知される。

---

## 1. Hosted Pub Repository API (V2)

pub.dev は **[Hosted Pub Repository Specification V2](https://github.com/dart-lang/pub/blob/master/doc/repository-spec-v2.md)** を実装しており、`dart pub` コマンドがパッケージ解決・ダウンロード・公開に使用しています。

### 主なエンドポイント

#### パッケージのバージョン一覧取得

```
GET /api/packages/<package>
```

**レスポンス例:**
```json
{
  "name": "http",
  "isDiscontinued": false,
  "latest": {
    "version": "1.2.2",
    "archive_url": "https://pub.dev/.../archive.tar.gz",
    "archive_sha256": "95cbaad5...",
    "pubspec": { /* pubspec内容 */ }
  },
  "versions": [ /* 全バージョンのリスト */ ]
}
```

| フィールド | 説明 |
|---|---|
| `isDiscontinued` | 廃止されたパッケージかどうか |
| `replacedBy` | 廃止時の代替パッケージ名 |
| `archive_url` | アーカイブ（.tar.gz）のダウンロードURL（リダイレクト対応が必要） |
| `archive_sha256` | アーカイブの SHA256 チェックサム |
| `advisoriesUpdated` | セキュリティアドバイザリの最終更新タイムスタンプ |

#### パッケージの公開

```
GET  /api/packages/versions/new        # アップロードURL取得（要認証）
POST <upload_url>                      # アーカイブのアップロード
GET  <finalize_url>                    # 公開の確定
```

アーカイブは gzip 圧縮された TAR 形式（`.tar.gz`）で multipart/form-data でアップロードします。

#### セキュリティアドバイザリ

```
GET /api/packages/<package>/advisories
```

**レスポンス例:**
```json
{
  "advisories": [ /* OSV形式のアドバイザリ */ ],
  "advisoriesUpdated": "2024-01-01T00:00:00Z"
}
```

アドバイザリは [OSV形式](https://ossf.github.io/osv-schema/) で返されます。

---

## 2. Additional APIs（追加API）

### パッケージ名の補完データ取得

```
GET https://pub.dev/api/package-name-completion-data
```

IDEや検索補完向けに、pub.dev のトップパッケージ名リストを返します。

| 項目 | 詳細 |
|---|---|
| レスポンス | gzip 圧縮 JSON |
| キャッシュ | 最低 **8時間** クライアント側でキャッシュすること |
| 注意 | 全パッケージを含むわけではない。ランキング順 |

**レスポンス例:**
```json
{ "packages": ["http", "provider", "riverpod", ...] }
```

---

### 全パッケージ名（アーカイブ・ミラー用）

```
GET https://pub.dev/api/package-names
```

pub.dev に登録された**全パッケージ名**をページネーション形式で返します。

| 項目 | 詳細 |
|---|---|
| レスポンス | gzip 圧縮 JSON |
| キャッシュ | 最低 **2時間** キャッシュすること |
| ページネーション | `nextUrl` フィールドが存在する場合、そのURLで次のページを取得 |

**レスポンス例:**
```json
{
  "packages": ["http", "provider", ...],
  "nextUrl": "https://pub.dev/api/package-names?next=..."
}
```

---

### パッケージのパブリッシャー情報

```
GET https://pub.dev/api/packages/<package>/publisher
```

**レスポンス例:**
```json
{ "publisherId": "dart.dev" }
```

パブリッシャーが設定されていない場合は `null` が返ります。キャッシュ有効期間は **2分**。

---

### パッケージのスコア・メタデータ

```
GET https://pub.dev/api/packages/<package>/score
```

**レスポンス例:**
```json
{
  "grantedPoints": 160,
  "maxPoints": 160,
  "likeCount": 8297,
  "downloadCount30Days": 11831655,
  "tags": ["sdk:dart", "sdk:flutter", "platform:android", ...]
}
```

| フィールド | 説明 |
|---|---|
| `grantedPoints` | pana による獲得スコア |
| `maxPoints` | pana の最大スコア |
| `likeCount` | いいね数 |
| `downloadCount30Days` | 直近30日のダウンロード数 |
| `tags` | pana や pub.dev が付与したタグ |

未計算の値（新規パッケージ等）は `null`。キャッシュ有効期間は **2分**。

---

## 3. 認証

パッケージの公開など認証が必要なAPIでは **Bearer トークン** を使用します。

```http
Authorization: Bearer <token>
```

トークンの管理は `dart pub token` コマンドで行います：

```bash
dart pub token add <hosted-url>   # トークンの追加
dart pub token --help             # ヘルプ
```

| ステータスコード | 意味 |
|---|---|
| `401 Unauthorized` | トークンなし or 無効。クライアントはトークンを削除して中断 |
| `403 Forbidden` | 有効なトークンだが権限不足 |

---

## 4. 新しいAPIのリクエスト方法

新しいAPIを要望する場合は [pub-dev の GitHub Issues](https://github.com/dart-lang/pub-dev/issues) に起票します。

公式APIとして検討される要件：
1. データが**公開**されている
2. **読み取り専用**（副作用がない）
3. **キャッシュ可能**なレスポンス（CDNオフロード可能）

---

## 5. FAQ

**Q: 検索機能を実装したい場合は？**

`/api/package-name-completion-data` でパッケージ名リストを取得し、アプリ側でフィルタリングして実装してください。

**Q: 非公式エンドポイントを使っても大丈夫？**

公開されていても、公式ドキュメントに記載のないエンドポイントは**予告なく変更・廃止**される可能性があります。本番利用は推奨されません。
