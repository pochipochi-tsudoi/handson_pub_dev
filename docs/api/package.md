# pub.dev パッケージ詳細 API

> **✅ 公式サポートAPI** (Hosted Pub Repository Specification V2)

---

## エンドポイント

```
GET https://pub.dev/api/packages/<package>
```

| パラメータ | 説明 |
|---|---|
| `<package>` | パッケージ名（例: `riverpod`, `dio`, `http`） |

---

## レスポンス形式

```json
{
  "name": "riverpod",
  "isDiscontinued": false,
  "replacedBy": null,
  "advisoriesUpdated": "2024-01-01T00:00:00Z",
  "latest": {
    "version": "3.2.1",
    "retracted": false,
    "archive_url": "https://pub.dev/api/archives/riverpod-3.2.1.tar.gz",
    "archive_sha256": "8c22216b...",
    "published": "2026-02-03T18:08:30.127034Z",
    "pubspec": { /* pubspec.yaml の内容 */ }
  },
  "versions": [
    { /* バージョン情報（latestと同じ構造） */ }
  ]
}
```

### トップレベルフィールド

| フィールド | 型 | 説明 |
|---|---|---|
| `name` | string | パッケージ名 |
| `isDiscontinued` | bool | 廃止されたパッケージかどうか（省略時 = false） |
| `replacedBy` | string? | 廃止時の代替パッケージ名（`isDiscontinued` が true の場合のみ） |
| `advisoriesUpdated` | string? | セキュリティアドバイザリの最終更新タイムスタンプ |
| `latest` | object | 最新バージョンの情報 |
| `versions` | array | 全バージョンのリスト（古い順） |

### `latest` / `versions[]` の各フィールド

| フィールド | 型 | 説明 |
|---|---|---|
| `version` | string | バージョン番号（例: `"3.2.1"`） |
| `retracted` | bool? | 取り消されたバージョンかどうか（省略時 = false） |
| `archive_url` | string | アーカイブ（`.tar.gz`）のダウンロードURL |
| `archive_sha256` | string? | アーカイブの SHA256 チェックサム |
| `published` | string | 公開日時（ISO 8601形式） |
| `pubspec` | object | `pubspec.yaml` の内容（JSON形式） |

### `pubspec` の主なフィールド

| フィールド | 説明 |
|---|---|
| `name` | パッケージ名 |
| `description` | 説明文 |
| `version` | バージョン |
| `homepage` | ホームページURL |
| `repository` | リポジトリURL（GitHub等） |
| `issue_tracker` | Issue TrackerのURL |
| `topics` | トピックタグ（例: `["state-management", "caching"]`） |
| `environment.sdk` | 対応Dart SDKバージョン範囲 |
| `dependencies` | 依存パッケージ |
| `dev_dependencies` | 開発用依存パッケージ |

---

## 実際のレスポンス例（riverpod）

```json
{
  "name": "riverpod",
  "latest": {
    "version": "3.2.1",
    "published": "2026-02-03T18:08:30.127034Z",
    "archive_url": "https://pub.dev/api/archives/riverpod-3.2.1.tar.gz",
    "archive_sha256": "8c22216be8ad3ef2b44af3a329693558c98eca7b8bd4ef495c92db0bba279f83",
    "pubspec": {
      "name": "riverpod",
      "description": "A reactive caching and data-binding framework. Riverpod makes working with asynchronous code a breeze.",
      "version": "3.2.1",
      "homepage": "https://riverpod.dev",
      "repository": "https://github.com/rrousselGit/riverpod",
      "topics": ["state-management", "caching", "dependency-injection", "riverpod"],
      "environment": { "sdk": "^3.7.0" }
    }
  },
  "versions": [ /* 全バージョン一覧（0.0.1-pre から最新まで） */ ]
}
```

---

## Dart（Dio）での実装例

```dart
Future<PackageDetail> fetchPackageDetail(String packageName) async {
  final dio = Dio(BaseOptions(baseUrl: 'https://pub.dev/api'));
  final response = await dio.get('/packages/$packageName');
  return PackageDetail.fromJson(response.data);
}
```

### Freezed モデル例

```dart
@freezed
abstract class PackageDetail with _$PackageDetail {
  const factory PackageDetail({
    required String name,
    required PackageVersion latest,
    required List<PackageVersion> versions,
    @Default(false) bool isDiscontinued,
    String? replacedBy,
  }) = _PackageDetail;

  factory PackageDetail.fromJson(Map<String, dynamic> json) =>
      _$PackageDetailFromJson(json);
}

@freezed
abstract class PackageVersion with _$PackageVersion {
  const factory PackageVersion({
    required String version,
    required String archiveUrl,
    required PackagePubspec pubspec,
    String? published,
    @Default(false) bool retracted,
  }) = _PackageVersion;

  factory PackageVersion.fromJson(Map<String, dynamic> json) =>
      _$PackageVersionFromJson(json);
}

@freezed
abstract class PackagePubspec with _$PackagePubspec {
  const factory PackagePubspec({
    required String name,
    required String description,
    required String version,
    String? homepage,
    String? repository,
    @Default([]) List<String> topics,
  }) = _PackagePubspec;

  factory PackagePubspec.fromJson(Map<String, dynamic> json) =>
      _$PackagePubspecFromJson(json);
}
```

---

## 関連エンドポイントとの使い分け

| エンドポイント | 用途 |
|---|---|
| `GET /api/search?q=<query>` | キーワード検索（パッケージ名一覧のみ） |
| **`GET /api/packages/<package>`** | **パッケージ詳細・バージョン一覧・pubspec取得** |
| `GET /api/packages/<package>/score` | いいね数・ダウンロード数・panaスコア |
| `GET /api/packages/<package>/publisher` | パブリッシャー情報 |

### 典型的な使い方

```
1. /api/search?q=riverpod         → パッケージ名一覧を取得
2. /api/packages/riverpod         → 詳細情報（説明・バージョン等）を取得
3. /api/packages/riverpod/score   → スコア・いいね数を取得（任意）
```

---

## 注意事項

- `versions` 配列は**全バージョン**（dev版・取り消し版含む）を含みます
- `retracted: true` のバージョンは使用が推奨されません
- `archive_url` は一時的なURLの場合があります（有効期限25分以上を想定）
- `archive_sha256` でダウンロード後の整合性確認が可能です
