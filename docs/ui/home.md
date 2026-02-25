# Home 画面（検索画面）の設計

> 参照: [概要.md](../概要.md)

pub.dev のパッケージを検索して一覧表示する画面です。

---

## 画面全体の構造

```
Scaffold
├── AppBar
│   └── タイトル（例: "パッケージ検索"）
└── body
    └── Column
        ├── 検索バー（TextField + 検索ボタン）
        └── 検索結果エリア
            ├── Idle    → 初期メッセージ or 空表示
            ├── Loading → CircularProgressIndicator
            ├── Error   → エラーメッセージ表示
            └── Success → ListView（パッケージカードの一覧）
```

---

## 必須要素

### 1. AppBar

| 項目 | 内容 |
|---|---|
| Widget | `AppBar` |
| タイトル | `Text('パッケージ検索')` など任意 |
| 備考 | シンプルで問題なし |

---

### 2. 検索バー

| 項目 | 内容 |
|---|---|
| Widget | `TextField` |
| コントローラ | `TextEditingController` で入力値を保持 |
| アクション | キーボードの完了 or 検索ボタンで検索実行 |
| ヒントテキスト | `"パッケージ名を入力"` など |
| 検索ボタン | `ElevatedButton` or `IconButton`（虫眼鏡アイコン） |

```dart
TextField(
  controller: _searchController,
  decoration: InputDecoration(
    hintText: 'パッケージ名を入力',
    suffixIcon: IconButton(
      icon: const Icon(Icons.search),
      onPressed: _onSearch,
    ),
  ),
  onSubmitted: (_) => _onSearch(),
)
```

---

### 3. 検索結果エリア（状態別の表示）

#### 状態の定義

`概要.md` に基づき、以下の4状態を使います。sealed class（Freezed）で定義するのが理想です。

| 状態 | 説明 | 表示内容 |
|---|---|---|
| `Idle` | 初期・未検索 | 「キーワードを入力してください」などのメッセージ |
| `Loading` | 通信中 | `CircularProgressIndicator`（中央寄せ） |
| `Success(results)` | 取得成功 | `ListView` でパッケージカードを一覧表示 |
| `Error(message)` | 通信失敗 | エラーメッセージ + 再試行ボタン（任意） |

---

### 4. パッケージカード（Success 時のリストアイテム）

1件1件を `ListTile` または `Card` + `ListTile` で表示します。

| 項目 | 表示内容 | API フィールド |
|---|---|---|
| タイトル | パッケージ名 | `package` |
| サブタイトル | バージョン | `version` |
| 説明 | パッケージの説明文 | `description` |

```dart
ListTile(
  title: Text(package.name),
  subtitle: Text(package.description),
  trailing: Text(package.version),
)
```

> **発展**: いいね数（`likeCount`）やダウンロード数（`downloadCount30Days`）を   
> `/api/packages/<package>/score` エンドポイントから取得して追加可能。

---

## 使用する Flutter ウィジェット 一覧

| ウィジェット | 用途 |
|---|---|
| `Scaffold` | 画面の骨格 |
| `AppBar` | ヘッダー |
| `Column` | 縦方向レイアウト |
| `TextField` | 検索入力 |
| `TextEditingController` | 入力値の管理 |
| `ElevatedButton` / `IconButton` | 検索実行 |
| `CircularProgressIndicator` | ローディング表示 |
| `ListView.builder` | 検索結果一覧 |
| `ListTile` / `Card` | 1件のパッケージ表示 |
| `Text` | 各種テキスト表示 |
| `Center` | 中央寄せ（ローディング・エラー時） |

---

## 状態管理の方針

### まずはシンプルに（入門向け）

`StatefulWidget` + `setState` で状態を管理する。

```dart
class HomeScreen extends StatefulWidget { ... }

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  SearchState _state = const SearchState.idle();

  void _onSearch() async {
    setState(() => _state = const SearchState.loading());
    try {
      final results = await repository.search(_controller.text);
      setState(() => _state = SearchState.success(results));
    } catch (e) {
      setState(() => _state = SearchState.error(e.toString()));
    }
  }
}
```

### 発展（Riverpod + Freezed）

| クラス | 役割 |
|---|---|
| `SearchState`（sealed class） | Idle / Loading / Success / Error の4状態 |
| `SearchNotifier`（AsyncNotifier） | 検索ロジックを保持 |
| `searchProvider` | UIから参照するProvider |

---

## API 連携

| 用途 | エンドポイント |
|---|---|
| パッケージ検索 | `GET https://pub.dev/api/search?q=<query>` |
| スコア・いいね数（発展） | `GET https://pub.dev/api/packages/<package>/score` |

> ⚠️ `/api/search` は公式サポートAPIではありません。  
> 公式は名前補完用の `/api/package-name-completion-data` を推奨しています。  
> ハンズオンでは利便性から `/api/search` を使用しますが、本番利用時は注意してください。

---

## 発展要件（余裕があれば）

- Material 3 デザイン対応（`useMaterial3: true`）
- ライト / ダークテーマ切り替え
- パッケージ名タップで pub.dev を `url_launcher` で開く
- 検索結果カードに説明文・いいね数・ダウンロード数を追加
