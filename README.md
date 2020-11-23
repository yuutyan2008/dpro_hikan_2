# 発注管理用のアプリケーション

このアプリケーションは、食材の発注を管理するための簡易アプリケーションです。
アプリケーションを使用するには、以下のコマンドを実行し、初期データを投入してください。

```
$ rails db:seed
```

初期データとして「商品、一般ユーザ、管理者」が登録されます。

## 商品を発注する

商品を発注するには、一般ユーザでログインします。なお、sign upからユーザを作成することで、一般ユーザを追加することができます。
- Email:`user@gmail.com`
- Password:`password`

[![Image from Gyazo](https://t.gyazo.com/teams/diveintocode/1992cfe501b3db3e0abde7cf517409c2.gif)](https://diveintocode.gyazo.com/1992cfe501b3db3e0abde7cf517409c2)

## 発注された総数を確認する

発注された商品ごとの総数を確認するには、管理者でログインします。
- Email:`admin@gmail.com`
- Password:`password`

[![Image from Gyazo](https://t.gyazo.com/teams/diveintocode/1fdc6626099a891ed9811b4203198b55.gif)](https://diveintocode.gyazo.com/1fdc6626099a891ed9811b4203198b55)

すべての一般ユーザから注文された商品の総数が表示されます。
