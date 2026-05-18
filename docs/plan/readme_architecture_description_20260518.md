# README アーキテクチャ説明追加 実装計画

## 目的

README に、ハンズオンで採用する階層分けとアーキテクチャの意図を追加する。

## 追加する内容

- なぜ階層分けが必要か
- UI と State の分離
- 単一責任
- アーキテクチャとは何か
- Riverpod とは何か
- Provider が必要な理由
- Google 推奨の MVVM + Repository とは何か
- `assets/mvvm.png` を使った説明
- 今回 MVVM + Repository をそのまま採用しない理由
- AI による編集では責任ごとの細かい分離がファイル横断を増やしやすいこと
- 人間が理解し、原因究明しやすくするために、UI / State / Provider / Model 程度には分けること
- Flutter と Riverpod の文脈では ViewModel が適していること

## 変更対象

- `README.md`

## 確認

- README の Markdown とリンクを目視確認する。
- Dart コード変更はないため、必要に応じて `dart analyze` のみ実行する。
