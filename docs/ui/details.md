# Details 画面（パッケージ詳細画面）の設計

> 参照: [home.md](./home.md) | [apiについて.md](../apiについて.md)

Home 画面でタップしたパッケージの詳細情報を表示する画面です。  
`GET /api/packages/<package>` のレスポンスをもとに、最新バージョン情報とバージョン一覧を表示します。

---

## 画面全体の構造

```
Scaffold
├── AppBar
│   └── タイトル: packageName（遷移時に渡された文字列）
└── body
    └── state.when(
        ├── loading → Center > CircularProgressIndicator
        ├── error   → Center > Text('エラーが発生しました')
        └── data    → ListView(padding: 16)
                       ├── DetailsPackageHeader
                       ├── Divider(height: 32)
                       └── DetailsVersionList
    )
```

---

## 画面遷移

Home 画面の `HomeScreenSearchList` から以下のように遷移してきます。

```dart
context.push('/details', extra: packages[index].package); // パッケージ名（String）を渡す
```

`DetailsScreen` はコンストラクタで `packageName` を受け取り、ViewModel の引数として使用します。

---

## 状態管理

`HookConsumerWidget` + Riverpod（`detailsScreenViewModelProvider`）で管理します。  
ViewModel の `build` が `async` のため、`AsyncValue` として扱われます。

### DetailsScreenState（Freezed）

| フィールド | 型 | 説明 |
|---|---|---|
| `packageDetail` | `PackageDetailResponse?` | APIから取得したパッケージ詳細。取得失敗時は `null` |

### DetailsScreenViewModel（Riverpod）

引数つきの Provider です。`packageName` をキーにして API を呼び出します。

```dart
@riverpod
class DetailsScreenViewModel extends _$DetailsScreenViewModel {
  @override
  Future<DetailsScreenState> build(String name) async {
    final response = await ref.watch(packageProvider.notifier).fetch(name);
    return DetailsScreenState(packageDetail: response);
  }
}
```

> `build` が `Future` を返すため、`ref.watch(...)` の戻り値は `AsyncValue<DetailsScreenState>` になります。  
> 画面側では `.when(loading:, error:, data:)` で状態を分岐します。

---

## コンポーネント

### DetailsScreen（screen.dart）

| 項目 | 内容 |
|---|---|
| 基底クラス | `HookConsumerWidget` |
| コンストラクタ引数 | `String packageName` |
| AppBar タイトル | `Text(packageName)` |
| body | `state.when(...)` で3状態を分岐 |

```dart
body: state.when(
  loading: () => const Center(child: CircularProgressIndicator()),
  error: (e, _) => const Center(child: Text('エラーが発生しました')),
  data: (s) {
    final detail = s.packageDetail;
    if (detail == null) return const Center(child: Text('データがありません'));
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        DetailsPackageHeader(detail: detail),
        const Divider(height: 32),
        DetailsVersionList(versions: detail.versions),
      ],
    );
  },
)
```

---

### DetailsPackageHeader（components/package_header.dart）

`StatelessWidget`。`PackageDetailResponse` を受け取り、最新バージョンの情報を表示します。

| 表示項目 | 内容 | データソース |
|---|---|---|
| パッケージ名 + バージョン | `"<name>  v<version>"` | `detail.name` / `detail.latest.version` |
| 説明文 | description | `detail.latest.pubspec.description` |
| リポジトリ URL | `"Repository: <url>"` | `pubspec.repository`（null の場合は非表示） |
| ホームページ URL | `"Homepage: <url>"` | `pubspec.homepage`（null の場合は非表示） |
| トピック | `"Topics: a, b, c"` | `pubspec.topics`（空の場合は非表示） |

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('${detail.name}  v${detail.latest.version}'),
    Gap(8),
    Text(pubspec.description ?? ''),
    if (pubspec.repository != null) ...[Gap(8), Text('Repository: ...')],
    if (pubspec.homepage != null)  ...[Gap(4), Text('Homepage: ...')],
    if (pubspec.topics.isNotEmpty) ...[Gap(8), Text('Topics: ...')],
  ],
)
```

---

### DetailsVersionList（components/version_list.dart）

`StatelessWidget`。`List<PackageVersion>` を受け取り、**最新10件**（末尾から10件）をリスト表示します。

| 表示項目 | 内容 | データソース |
|---|---|---|
| ヘッダー | `"Versions (<total件数>)"` | `versions.length` |
| バージョン番号 | `ListTile.title` | `v.version` |
| 公開日 | `ListTile.subtitle` | `v.published` の先頭10文字（YYYY-MM-DD） |
| retracted マーク | `ListTile.trailing` に `"retracted"` 表示 | `v.retracted` |

```dart
final recent = versions.reversed.take(10).toList();
// 新しい順に最大10件を表示
```

---

## モデル

### PackageDetailResponse

`GET /api/packages/<package>` のルートレスポンス。

| フィールド | 型 | 説明 |
|---|---|---|
| `name` | `String` | パッケージ名 |
| `latest` | `PackageVersion` | 最新バージョンの情報 |
| `versions` | `List<PackageVersion>` | 全バージョンの一覧 |
| `isDiscontinued` | `bool` | 廃止フラグ（デフォルト `false`） |
| `replacedBy` | `String?` | 代替パッケージ名 |

### PackageVersion

| フィールド | 型 | 説明 |
|---|---|---|
| `version` | `String?` | バージョン文字列 |
| `pubspec` | `PackagePubspec` | pubspec.yaml の内容 |
| `published` | `String?` | 公開日時（ISO 8601形式） |
| `archiveUrl` | `String?` | tar.gz のダウンロードURL |
| `archiveSha256` | `String?` | アーカイブのハッシュ値 |
| `retracted` | `bool` | 撤回済みフラグ（デフォルト `false`） |

### PackagePubspec

| フィールド | 型 | 説明 |
|---|---|---|
| `name` | `String?` | パッケージ名 |
| `description` | `String?` | 説明文 |
| `version` | `String?` | バージョン |
| `homepage` | `String?` | ホームページURL |
| `repository` | `String?` | リポジトリURL |
| `topics` | `List<String>` | トピック一覧（デフォルト `[]`） |

---

## API 連携

| 用途 | エンドポイント |
|---|---|
| パッケージ詳細取得 | `GET https://pub.dev/api/packages/<package>` |

`packageProvider`（`PackageNotifier`）経由で Dio を用いてリクエストします。

```dart
Future<PackageDetailResponse> fetch(String packageName) async {
  final response = await ref.read(apiClientProvider).get('/packages/$packageName');
  return PackageDetailResponse.fromJson(response.data);
}
```

---

## 使用パッケージ

| パッケージ | 用途 |
|---|---|
| `hooks_riverpod` | `HookConsumerWidget` / `ref.watch` |
| `riverpod_annotation` | `@riverpod` アノテーション |
| `freezed_annotation` | `DetailsScreenState` / モデルクラスの定義 |
| `gap` | `Gap` ウィジェット（余白） |

---

## 発展要件（余裕があれば）

- `isDiscontinued` が `true` の場合に廃止バナーを表示する
- `replacedBy` がある場合に代替パッケージへのリンクを表示する
- リポジトリ・ホームページURLを `url_launcher` でタップ可能にする
- `retracted` バージョンをグレーアウト表示する
