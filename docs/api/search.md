# pub.dev Search API

> **⚠️ 注意:** `/api/search` は**公式サポート外**のエンドポイントです。  
> 予告なく変更・廃止される可能性があります。ハンズオン・学習目的での利用に留めてください。

---

## エンドポイント

```
GET https://pub.dev/api/search
```

---

## クエリパラメータ

| パラメータ | 型 | 必須 | 説明 |
|---|---|---|---|
| `q` | string | ✅ | 検索キーワード。パッケージ名・説明文などを対象に検索 |
| `page` | integer | ❌ | ページ番号（1始まり）。省略時は1ページ目 |
| `sort` | string | ❌ | 並び順（後述） |
| `topic` | string | ❌ | トピックでフィルタ（例: `network`, `ui`） |
| `dependency` | string | ❌ | 特定パッケージに依存しているものをフィルタ |

### `sort` の選択肢

| 値 | 説明 |
|---|---|
| `top`（デフォルト） | 総合スコア順（pub points・人気・いいね数を考慮） |
| `updated` | 最終更新が新しい順 |
| `created` | 作成日が新しい順 |
| `popularity` | ダウンロード数順 |
| `like` | いいね数順 |
| `points` | pub points 順 |

---

## レスポンス形式

```json
{
  "packages": [
    { "package": "riverpod" },
    { "package": "hooks_riverpod" },
    { "package": "flutter_riverpod" }
  ],
  "next": "https://pub.dev/api/search?q=riverpod&page=2"
}
```

| フィールド | 型 | 説明 |
|---|---|---|
| `packages` | array | 検索結果のパッケージ名リスト（1ページ最大10件） |
| `packages[].package` | string | パッケージ名 |
| `next` | string \| null | 次のページのURL。最終ページの場合は存在しない |

> **注意:** レスポンスには**パッケージ名のみ**が含まれます。  
> 説明文・バージョン・スコアを取得するには別途 `/api/packages/<package>` や  
> `/api/packages/<package>/score` を叩く必要があります。

---

## リクエスト例

### キーワード検索

```
GET https://pub.dev/api/search?q=riverpod
```

### 2ページ目を取得

```
GET https://pub.dev/api/search?q=riverpod&page=2
```

### スコア順で並び替え

```
GET https://pub.dev/api/search?q=state+management&sort=top
```

### トピックでフィルタ

```
GET https://pub.dev/api/search?q=dio&topic=network
```

---

## Dart（Dio）での実装例

```dart
Future<List<String>> searchPackages(String query, {int page = 1}) async {
  final dio = Dio();
  final response = await dio.get(
    'https://pub.dev/api/search',
    queryParameters: {
      'q': query,
      'page': page,
    },
  );

  final data = response.data as Map<String, dynamic>;
  final packages = data['packages'] as List<dynamic>;

  return packages
      .map((e) => e['package'] as String)
      .toList();
}
```

---

## ページネーション

1ページあたり **最大10件** のパッケージ名が返ります。  
続きがある場合は `next` フィールドにURLが含まれるので、そのURLを使って次のページを取得します。

```dart
// next が null になるまでループして全件取得する例
Future<List<String>> fetchAllResults(String query) async {
  final dio = Dio();
  final results = <String>[];
  int page = 1;

  while (true) {
    final response = await dio.get(
      'https://pub.dev/api/search',
      queryParameters: {'q': query, 'page': page},
    );
    final data = response.data as Map<String, dynamic>;
    final packages = data['packages'] as List<dynamic>;

    results.addAll(packages.map((e) => e['package'] as String));

    if (data['next'] == null) break;
    page++;
  }

  return results;
}
```

---

## 実際のレスポンス例

### `GET /api/search?q=riverpod`

```json
{
  "packages": [
    { "package": "riverpod" },
    { "package": "hooks_riverpod" },
    { "package": "flutter_riverpod" },
    { "package": "riverbloc" },
    { "package": "talker_riverpod_logger" },
    { "package": "refena" },
    { "package": "riverpod_generator" },
    { "package": "riverpod_lint" },
    { "package": "riverpod_annotation" },
    { "package": "riverpod_test" }
  ],
  "next": "https://pub.dev/api/search?q=riverpod&page=2"
}
```

---

## 公式サポートAPIとの使い分け

| 用途 | エンドポイント | サポート |
|---|---|---|
| **名前補完**（IDEなど） | `/api/package-name-completion-data` | ✅ 公式 |
| **全件取得**（ミラーなど） | `/api/package-names` | ✅ 公式 |
| **キーワード検索** | `/api/search?q=<query>` | ⚠️ 非公式 |

ハンズオンでは利便性から `/api/search` を使用しますが、  
公式の代替手段として「名前補完データを取得してクライアント側でフィルタ」する方法も覚えておきましょう。
