# プロジェクト名 handson_pub_dev 変更 実装計画

## 目的

Flutter プロジェクト名を `pochi_pochi2026_handson` から `handson_pub_dev` に変更し、iOS / Android / Web の表示名や参照も合わせる。

## 変更方針

- `pubspec.yaml` の `name` を `handson_pub_dev` に変更する。
- Dart の package import を `package:handson_pub_dev/...` に変更する。
- README 内のプロジェクト名を変更する。
- Web の `index.html` と `manifest.json` の名前を `handson_pub_dev` に変更する。
- iOS の `Info.plist` の表示名を `handson_pub_dev` に変更する。
- Android のプロジェクト名、applicationId、namespace、label を `handson_pub_dev` に合わせる。
- 生成キャッシュやビルド成果物は変更対象外とする。

## 注意点

- リポジトリのディレクトリ名自体は `/Users/eitanakgaichi/pochi-pochi2026_handson` のままにする。
- `ios/Flutter/Generated.xcconfig` や `ios/Flutter/flutter_export_environment.sh` は Flutter が生成する環境ファイルのため、必要最小限の確認に留める。
- Android の package namespace は Dart の package 名とは別だが、要望に合わせて `com.example.handson_pub_dev` に変更する。

## 確認

- `dart format lib test`
- `dart analyze`
- `flutter test`
- `grep` で旧 package import が残っていないことを確認する。
