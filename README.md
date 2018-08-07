# CMakeのビルド手順

## ビルドするバージョン

`HEAD`

## ビルド方法 (Ubuntu 16.04 64bit)

```
# make, g++(C++11以上をサポートしているもの)が必要
apt-get install -y make g++
git clone https://gitlab.kitware.com/cmake/cmake.git
cd cmake
# 必要に応じて--prefixでインストール先を変更
./bootstrap --prefix=/usr/local/ && make && install
```

## ビルド方法 (Windows 10 64bit with Docker)

Docker for Windows (Microsoft Windows 10)をダウンロードする
https://store.docker.com/editions/community/docker-ce-desktop-windows
いつの間にかダウンロードがログイン必須になっている...

このリポジトリをローカルにクローンする

Dockerfileのあるフォルダでdocker buildを実行する
```
docker build -t cmake-build:latest .
```

## 動作確認やテンプレートとして使うサンプルコード

```sample.cmake
message(STATUS "Hello, World!")
```

## 実行するためのコマンド

```
cmake -P sample.cmake
```

