# p4python
本リポジトリでは、P4Pythonのテスト用Dockerイメージを作成するためのファイル群を管理しています。

`docker`または`docker-compose`を使用して次のようにしてビルドしてください。

```
例: dockerを使用
    docker build -t p4python .

例: docker-composeを使用
    docker-compose build
```



ベースになるPythonのバージョンをARGで調整できるようにしています。

Python 3.7をデフォルトにしていますが、Python 3.8を使用する場合は次のようにしてビルドしてください。

```
例: dockerを使用
    docker build -t p4python --build-arg PYTHON_VER=3.8 .

例：docker-composeを使用
    docker-compose build --build-arg PYTHON_VER=3.8
```



ビルド後はコンテナにログインして、サンプルとして配置した`test.py`を適宜編集して実行します。

```
例:
    docker run -it p4python /bin/bash
    python3 --version
    vi test.py
    python3 test.py
```

サンプルとして配置した`test.py`は、`p4 info`の結果を出力するためのスクリプトになっています。

接続先のサーバと接続に利用するユーザを`p4.port`と`p4.user`に設定してください。