# pochi_pochi2026_handson

pub.dev のパッケージ検索アプリを、コメントアウト解除で完成させる Flutter ハンズオンです。

## なぜ階層を分けるのか

アプリのコードは、画面が小さいうちは 1 ファイルにまとめても動きます。
しかし、UI、状態、API 通信、JSON 変換が同じ場所に混ざると、どこを直せばよいか分かりにくくなります。

このハンズオンでは、主に次の考え方を学ぶために階層を分けます。

- UI と State の分離
- 単一責任
- 原因究明しやすい構成
- 変更範囲を小さく保つ構成

UI は画面を描画する責任を持ちます。
State は画面が表示するデータや状態を持ちます。
API 通信は外部からデータを取得する責任を持ちます。
Model は JSON を Dart の型として扱う責任を持ちます。

責任を分けることで、画面が崩れたのか、状態更新が間違っているのか、API 通信に失敗しているのかを切り分けやすくなります。

## アーキテクチャとは

アーキテクチャは、コードをどの責任に分け、どの順番でデータを流すかを決める設計方針です。

Flutter アプリでは、画面、状態、通信、データ変換がそれぞれ別の責任を持ちます。
アーキテクチャを決めることで、ファイルが増えても「どこに何を書くか」を判断しやすくなります。

## MVVM + Repository とは

Google は Flutter アプリの構成として、MVVM + Repository のような責任分離を推奨しています。

![MVVM + Repository](assets/mvvm.png)

MVVM + Repository では、主に次のように責任を分けます。

- View: UI を描画する
- ViewModel: UI に必要な State と操作を持つ
- Repository: データ取得元を隠蔽する
- Service / DataSource: API や DB など実際の取得処理を行う
- Model: データ構造を型として表す

この形は、大きなアプリや複数のデータ取得元があるアプリでは強力です。
一方で、ハンズオンの題材としてはファイル数と横断箇所が増えやすく、初学者が全体像を追いにくくなることがあります。

## 今回の構成

このハンズオンでは、MVVM + Repository をそのまま細かく実装するのではなく、次の粒度にしています。

```txt
ui/
  screen.dart
  view_model.dart
  components/
provider/
  dio/
  search/
  package/
model/
  search/
  package/
router/
```

`ui/` は画面と画面部品を持ちます。
`view_model.dart` は画面に必要な State と操作を持ちます。
`provider/` は API クライアントや API 呼び出しを提供します。
`model/` は API レスポンスを Dart の型として扱います。
`router/` は画面遷移をまとめます。

Repository 層を独立させていない理由は、今回のアプリではデータ取得元が pub.dev API だけで、Repository を作るメリットよりもファイル横断のコストが大きいからです。

## AI とアーキテクチャ

アーキテクチャは、もともと人間が理解しやすくするためのものです。
AI は大量のコードを読めますが、責任ごとに細かく分離しすぎると、編集時に多くのファイルを横断する必要があります。

そのため、AI に作業させる前提では、細かすぎる分離は無駄な編集や確認を増やすことがあります。
一方で、まったく分けないと、人間が原因を追いにくくなります。

このハンズオンでは、人間が理解しやすく、AI が編集するときにも横断が増えすぎない中間の形として、UI、ViewModel、Provider、Model、Router に分けています。

## Riverpod とは

Riverpod は、Flutter で状態や依存関係を管理するためのライブラリです。

画面から直接 API クライアントを作ったり、画面の中に状態更新ロジックを書いたりすると、UI とロジックが混ざります。
Riverpod を使うと、UI は `ref.watch` で状態を読み、`ref.read` で操作を呼び出す形にできます。

これにより、UI は表示に集中し、状態更新や API 呼び出しは ViewModel や Provider に分けられます。

## なぜ Provider がいるのか

Provider は、必要なものを必要な場所へ渡すための仕組みです。

このアプリでは、次のようなものを Provider として扱います。

- API クライアント
- パッケージ検索処理
- パッケージ詳細取得処理
- 画面の ViewModel

Provider を使うことで、画面が API クライアントの作り方を知る必要がなくなります。
また、ViewModel が UI の外側で State を持てるため、UI と State の分離につながります。

Flutter と Riverpod の文脈では、ViewModel を Provider として公開する形が自然です。
画面は ViewModel の State を監視し、ボタン操作などで ViewModel のメソッドを呼び出します。

## 構成

```txt
lib/
  main.dart
  app.dart
  complete/
  handson/
```

- `lib/complete/`: 完成系アプリ
- `lib/handson/`: コメントアウト解除用アプリ
- `lib/app.dart`: 完成系とハンズオン用の切り替え

## 切り替え

完成系アプリを使う場合は `lib/app.dart` を次の状態にします。

```dart
export 'complete/app.dart';

// export 'handson/app.dart';
```

ハンズオン用アプリを使う場合は `lib/app.dart` を次の状態にします。

```dart
// export 'complete/app.dart';

export 'handson/app.dart';
```

## 1. hello world の確認

`lib/app.dart` をハンズオン用に切り替えます。

対象ファイル:

- `lib/app.dart`
- `lib/handson/app.dart`

実行します。

```sh
flutter run
```

## 2.1. UI の作成

`STEP 2.1` のコメントアウトを解除します。

対象ファイル:

- `lib/handson/ui/home/screen.dart`
- `lib/handson/ui/home/components/search_field.dart`

この時点では後続ステップのファイルも必要になるため、次のステップへ進みます。

## 2.2. Router の用意

`STEP 2.2` のコメントアウトを解除します。

対象ファイル:

- `lib/handson/app.dart`
- `lib/handson/router/router.dart`

`lib/handson/app.dart` は Hello World 用の `MyApp` をコメントアウトし、`STEP 2.2` の `MyApp` を使います。

## 2.3. UI の作成 2

`STEP 2.3` のコメントアウトを解除します。

対象ファイル:

- `lib/handson/ui/home/components/search_list.dart`
- `lib/handson/ui/details/screen.dart`
- `lib/handson/ui/details/components/package_header.dart`
- `lib/handson/ui/details/components/version_list.dart`

## 3. model 作成

`STEP 3` のコメントアウトを解除します。

対象ファイル:

- `lib/handson/model/search/model.dart`
- `lib/handson/model/package/model.dart`

build_runner を実行します。

```sh
dart run build_runner build --delete-conflicting-outputs
```

## 4. Provider の作成

`STEP 4` のコメントアウトを解除します。

対象ファイル:

- `lib/handson/provider/dio/provider.dart`
- `lib/handson/provider/search/provider.dart`
- `lib/handson/provider/package/provider.dart`

build_runner を実行します。

```sh
dart run build_runner build --delete-conflicting-outputs
```

## 5. ViewModel の作成

`STEP 5` のコメントアウトを解除します。

対象ファイル:

- `lib/handson/ui/home/view_model.dart`
- `lib/handson/ui/details/view_model.dart`

build_runner を実行します。

```sh
dart run build_runner build --delete-conflicting-outputs
```

## 6. 実行の確認

実行します。

```sh
flutter run
```

検索画面で pub.dev のパッケージを検索し、検索結果をタップして詳細画面へ遷移できれば完了です。

## 7. 発展課題

UI を自分で綺麗にします。
