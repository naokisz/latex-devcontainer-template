# latex-devcontainer-template

私のlatex環境のためのdevcontainer-template

## 動作環境

## 使い方

git管理されたlatexのテンプレートを用意して、その中にcdしておく。
以下のコマンドを実行すると、devcontainerのテンプレートが展開される。

```bash
git clone git@github.com:naokisz/latex-devcontainer-template.git .devcontainer
git submodule add git@github.com:naokisz/latex-devcontainer-template.git .devcontainer
.devcontainer/initialize.sh
```

## クレジット

* ファイル構成や、テンプレートの展開の仕方は[a-nau/latex-devcontainer](https://github.com/a-nau/latex-devcontainer)を参考に作成いたしました。

* [Paperist/texlive-ja](https://github.com/Paperist/texlive-ja)をベースイメージとして、自分用にカスタマイズした環境を構築しています。
