# SML Lessons

SML ( Standard ML ) は、関数型プログラミング言語です。

## 開発環境について

| 名称 | 用途 |
| :----: | ---- |
| mlton | SML ソースコードのコンパイル |
| smlnj | SML の対話的実行環境 |

## 開発環境構築

### Windows 10 の場合

1. Bash on Ubuntu on Windows を有効化する

    [こちら](https://qiita.com/Jo_Saka/items/93c47062638726b5b561) を参照

2. 以下のコマンドを実行する

  ```
  $ sudo apt-get update
  $ sudo apt-get install mlton-compiler
  ```

### macOS / Linux の場合

1. Homebrew をインストールする

    [こちら](https://brew.sh/index_ja) を参照

2. 以下のコマンドを実行する
  
  ```
  $ brew install mlton
  $ brew install smlnj
  ```
  
3. smlnj の PATH を通す

  smlnj については、インストールが完了しても PATH が通っていないので  
  まだ ``sml`` コマンドで起動することができません。  
  **実際の smlnj のインストール先ディレクトリを確認して PATH を通してください。**

  Bash で PATH を通す方法がわからない場合は [こちら]() を参照してください。

  ```
  export PATH=/usr/local/smlnj/bin:$PATH
  ```
