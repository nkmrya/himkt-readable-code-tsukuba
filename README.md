# リーダブル

* 言語はRuby
読む人が　読みやすいなら　リーダブル (575)


## 仕様2

ターミナル・コマンドプロンプトでこのリポジトリが存在するディレクトリに移動！
```shell
ruby recipe.rb
```

## 仕様3

```shell
ruby recipe.rb recipe-data.txt
```

## 仕様4
```shell
ruby recipe.rb spec4
```

## 仕様5
```shell
ruby recipe.rb recipe-data.txt
```

## 仕様6

```shell
ruby recipe.rb recipe-data.txt <id>
```

## 仕様7

```shell
ruby recipe.rb recipe-data.txt spec7
```


## メモ
実際のコードとリーダブルだと思っているかの説明
```c
exit(EXIT_FAILURE)
```
exit(1)などではなく読んでわかるフラグを使ってるからリーダブル
