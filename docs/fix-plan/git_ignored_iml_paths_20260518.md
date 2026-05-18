# Git ignored iml paths 修正計画

## 現象

`git add` 時に、次のようなエラーが出る。

```txt
The following paths are ignored by one of your .gitignore files
```

## 考えられる原因

- `.gitignore` に `*.iml` が設定されている。
- プロジェクト名変更により、追跡済みだった旧 `.iml` を削除し、新しい `.iml` を追加する必要がある。
- 新しい `.iml` は `*.iml` に一致するため、そのままだと Git に追加できない。

## 対策

- `.gitignore` に新しい `.iml` ファイルだけ例外を追加する。
- 旧ファイルの削除と新ファイルの追加を `git add -A` でまとめてステージできる状態にする。

## 修正対象

- `.gitignore`

## 確認

- `git check-ignore` で新しい `.iml` の例外が効いていることを確認する。
- `git status --short --untracked-files=all` で新しい `.iml` が `??` として見えることを確認する。
