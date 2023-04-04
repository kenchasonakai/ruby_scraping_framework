## 使用Rubyバージョン
3.1.2

## gemのインストールとDBのセットアップ
```
bundle install
ruby -I ./ db/migrations/base.rb
```

## ディレクトリ構成
### app
- model用のファイルが入ってます

### db
- sqliteデータやmigrationデータが入ってます

### config
データベース接続設定とファイルの読み込み関連のファイルが入ってます

### lib
スクレイピングの実行ファイルが入ってます

## irb
- irbを起動して`require './config/application.rb'`を実行するとirb上でActiveRecordの操作が行えます
