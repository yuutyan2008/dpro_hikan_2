# 発注管理用のアプリケーション

このアプリケーションは、食材の発注を管理するための簡易アプリケーションです。
アプリケーションを使用するには、以下のコマンドを実行し、初期データを投入してください。

```
$ rails db:seed
```

初期データとして「商品、一般ユーザ、管理者」が登録されます。

## 商品を発注する

商品を発注するには、一般ユーザでログインします。
以下のユーザがデフォルトで作成されています（Sign upからユーザを作成することで、一般ユーザを追加することができます）。
- Email:`user@gmail.com`
- Password:`password`

[![Image from Gyazo](https://t.gyazo.com/teams/diveintocode/97f0bf381c7c01ff3ecbf4809cdf3e9a.gif)](https://diveintocode.gyazo.com/97f0bf381c7c01ff3ecbf4809cdf3e9a)

## 発注された総数を確認する

発注された商品ごとの総数を確認するには、管理者でログインします。
- Email:`admin@gmail.com`
- Password:`password`

[![Image from Gyazo](https://t.gyazo.com/teams/diveintocode/2064f2049810cabf9d8fb7eb9216ed5b.gif)](https://diveintocode.gyazo.com/2064f2049810cabf9d8fb7eb9216ed5b)

すべての一般ユーザから注文された商品の総数が表示されます。
