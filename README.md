# pochi_pochi2026_handson

pub.dev のパッケージ検索アプリを、コメントアウト解除で完成させる Flutter ハンズオンです。

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
