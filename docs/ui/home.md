# Home 画面（検索画面）の設計

> 参照: [概要.md](../概要.md)

pub.dev のパッケージを検索して一覧表示する画面です。

---

## 画面全体の構造

```
Scaffold
├── AppBar
│   └── タイトル: "pub.dev search"
└── body
    └── Column
        ├── Gap(8)
        ├── Row（検索バー）
        │   ├── Expanded(flex:7) → HomeScreenSearchField
        │   ├── Gap(4)
        │   └── Expanded(flex:3) → ElevatedButton "Search"
        ├── Gap(8)
        └── Expanded → HomeScreenSearchList
```

---

## 状態管理

`HookConsumerWidget` + Riverpod（`homeScreenViewModelProvider`）で管理します。

### HomeScreenState（Freezed）

| フィールド | 型 | 説明 |
|---|---|---|
| `isLoading` | `bool` | 通信中フラグ |
| `packages` | `List<Package>` | 検索結果一覧 |

> **注**: 現実装では `Idle` / `Loading` / `Error` の sealed class ではなく、  
> `isLoading` フラグ + `packages` リストのシンプルな Freezed state を採用しています。

### HomeScreenViewModel（Riverpod）

```dart
@riverpod
class HomeScreenViewModel extends _$HomeScreenViewModel {
  @override
  HomeScreenState build() {
    return const HomeScreenState(isLoading: false, packages: []);
  }

  Future<void> search(String query) async {
    state = state.copyWith(isLoading: true);
    final response = await ref.read(searchProvider.notifier).search(query);
    state = state.copyWith(isLoading: false, packages: response.packages);
  }
}
```

---

## コンポーネント

### HomeScreen（screen.dart）

`HookConsumerWidget` として実装。`useTextEditingController()` で入力値を管理。

```dart
class HomeScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenViewModelProvider);
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("pub.dev search"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Gap(8),
          Row(
            children: [
              Expanded(flex: 7, child: HomeScreenSearchField(textController: textController)),
              Gap(4),
              Expanded(
                flex: 3,
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(homeScreenViewModelProvider.notifier).search(textController.text);
                  },
                  child: const Text("Search"),
                ),
              ),
            ],
          ),
          Gap(8),
          Expanded(child: HomeScreenSearchList(packages: state.packages)),
        ],
      ),
    );
  }
}
```

---

### HomeScreenSearchField（components/search_field.dart）

`HookWidget` として実装。外部から `TextEditingController` を受け取ります。

| 項目 | 内容 |
|---|---|
| Widget | `TextField` |
| コントローラ | 親から受け取った `TextEditingController` |
| ヒントテキスト | `'Search'` |
| ボーダー | `OutlineInputBorder()` |

---

### HomeScreenSearchList（components/search_list.dart）

`StatelessWidget` として実装。`List<Package>` を受け取って一覧表示します。

| 項目 | 内容 |
|---|---|
| Widget | `ListView.builder` |
| 1件の表示 | `InkWell` > `Column` > `Text`（パッケージ名） + `Divider` |
| タップ操作 | `context.push('/details', extra: packages[index].package)` で詳細画面へ遷移 |
| 表示フィールド | `packages[index].package`（パッケージ名のみ） |

---

## 使用パッケージ

| パッケージ | 用途 |
|---|---|
| `flutter_hooks` | `useTextEditingController()` |
| `hooks_riverpod` | `HookConsumerWidget` / `ref.watch` |
| `riverpod_annotation` | `@riverpod` アノテーション |
| `freezed_annotation` | `HomeScreenState` の定義 |
| `gap` | `Gap` ウィジェット（余白） |
| `go_router` | `context.push()` による画面遷移 |

---

## API 連携

| 用途 | エンドポイント |
|---|---|
| パッケージ検索 | `GET https://pub.dev/api/search?q=<query>` |

> ⚠️ `/api/search` は公式サポート外 API です。  
> 公式は `/api/package-name-completion-data` を推奨しています。  
> ハンズオンでは利便性から `/api/search` を使用します。

---

## 発展要件（余裕があれば）

- ローディング中に `CircularProgressIndicator` を表示する
- エラー時のメッセージ表示と再試行ボタン
- 検索結果カードにバージョンや説明文を追加
- パッケージ名タップで pub.dev を `url_launcher` で開く
