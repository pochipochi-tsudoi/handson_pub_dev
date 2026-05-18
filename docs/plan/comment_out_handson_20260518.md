# コメントアウト解除型ハンズオン化 実装計画

## 目的

既存の完成済み Flutter アプリをもとに、受講者がドキュメントの手順に沿ってコメントアウトを解除しながらアプリを完成させるハンズオン形式へ変更する。

完成系アプリと受講者が作っていくハンズオン用アプリは、export の切り替えで選べる構成にする。

## 前提

- 既存の `lib` 配下には完成系のコードが存在する。
- `lib/provider/package/provider.dart` と `lib/provider/search/provider.dart` には既存の未コミット変更があるため、実装時に上書きしない。
- コード内コメントはステップを明示するためだけに使い、説明文は含めない。
- 発展課題の UI 改善はコードとして用意しない。

## 方針

### 1. 完成系コードの退避

既存の完成済みコードと同じ内容を `lib/complete/` 配下へコピーする。

対象:

- `main.dart`
- `router/router.dart`
- `ui/home/`
- `ui/details/`
- `model/search/`
- `model/package/`
- `provider/dio/`
- `provider/search/`
- `provider/package/`

完成系側は通常の Dart コードとして動く状態を維持する。

### 2. ハンズオン用コードの作成

`lib/handson/` 配下に、完成系コードと同じ構造のコメントアウト解除用コードを作成する。

ハンズオン用コードはステップごとに必要なコードブロックをコメントアウトし、受講者がコメントアウトを解除して進められるようにする。

コメントの形式は説明文ではなく、以下のようなステップ目印だけにする。

- `// STEP 1`
- `// STEP 2.1`
- `// STEP 2.2`
- `// STEP 2.3`
- `// STEP 3`
- `// STEP 4`
- `// STEP 5`
- `// STEP 6`
- `// STEP 7`

### 3. export による切り替え

`lib/app.dart` を作成し、完成系またはハンズオン用の `main` 相当エントリを export で切り替える。

例:

```dart
export 'complete/app.dart';
// export 'handson/app.dart';
```

`lib/main.dart` は `app.dart` を import して `runApp` を呼ぶ薄い構成にする。

### 4. ステップ構成

#### 1. hello world の確認

ハンズオン用アプリの初期状態は Hello World 表示にする。

#### 2.1. UI の作成

検索画面の基本 UI をコメントアウト解除で作る。

対象候補:

- `Scaffold`
- `AppBar`
- `Column`
- `TextField`
- `ElevatedButton`

#### 2.2. Router の用意

`go_router` を使うルーティングをコメントアウト解除で作る。

対象候補:

- `GoRouter`
- `/`
- `/details`
- `MaterialApp.router`
- `context.push`

#### 2.3. UI の作成 2

詳細画面 UI と検索結果リスト UI をコメントアウト解除で作る。

対象候補:

- `HomeScreenSearchList`
- `DetailsScreen`
- `DetailsPackageHeader`
- `DetailsVersionList`

#### 3. model 作成

Freezed / JSON Serializable の model をコメントアウト解除で作る。

対象候補:

- `SearchResponse`
- `Package`
- `PackageDetailResponse`
- `PackageVersion`
- `PackagePubspec`

このステップ後に build_runner を実行する前提にする。

#### 4. Provider の作成

API 通信用 Provider をコメントアウト解除で作る。

対象候補:

- `apiClientProvider`
- `ApiClient`
- `SearchNotifier`
- `PackageNotifier`

このステップ後に build_runner を実行する前提にする。

#### 5. ViewModel の作成

画面用 ViewModel をコメントアウト解除で作る。

対象候補:

- `HomeScreenState`
- `HomeScreenViewModel`
- `DetailsScreenState`
- `DetailsScreenViewModel`

このステップ後に build_runner を実行する前提にする。

#### 6. 実行の確認

コメントアウト解除済みのハンズオン用アプリが完成系と同等に動くことを確認する。

#### 7. 発展課題

UI 改善は受講者が自分で実施するため、コード側には用意しない。

## ドキュメント作成

ハンズオン手順書を `docs/handson.md` として作成する。

手順書には以下を含める。

- export 切り替え方法
- 各ステップで解除するファイル
- build_runner 実行タイミング
- 実行確認コマンド
- 発展課題は自分で UI を綺麗にすることのみ記載

## 実装後の確認

- `dart format` を実行する。
- `dart analyze` を実行する。
- 必要に応じて build_runner を実行し、生成ファイルが揃うことを確認する。

## 変更予定ファイル

追加予定:

- `lib/app.dart`
- `lib/complete/**`
- `lib/handson/**`
- `docs/handson.md`

変更予定:

- `lib/main.dart`

既存未コミット変更があるため注意するファイル:

- `lib/provider/package/provider.dart`
- `lib/provider/search/provider.dart`
