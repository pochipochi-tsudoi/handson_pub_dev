# ハンズオン手順 README 移動と旧配置コード削除 実装計画

## 目的

ハンズオン用の説明を `docs/handson.md` ではなく `README.md` に集約し、実行に使わない旧配置のコードを削除して構成を分かりやすくする。

## 方針

- `README.md` にコメントアウト解除ハンズオンの手順を記載する。
- `docs/handson.md` は削除する。
- `lib` 直下の旧配置コードを削除する。
  - `lib/model/`
  - `lib/provider/`
  - `lib/router/`
  - `lib/ui/`
- 実行対象は `lib/app.dart` の export 切り替えで `lib/complete/` または `lib/handson/` を参照する構成に統一する。

## 確認

- `dart format` を実行する。
- `dart analyze` を実行する。
- `flutter test` を実行する。
