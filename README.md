## サービス名

- ①Active Recorder
- ②Hack Record

## サービス概要

- 初学者向け ActiveRecord 練習用サービス
- https://sqlab.net/ に近いイメージです

## コンセプト

### 課題として感じていること

- Rails の学習を進めるにあたって、モデルについての学習方法の選択肢を増やしていきたいと考えています。受講生同士で教え合いをする中で、User.all や User.find_by といったコードをおまじない的な理解のままで終わっている方が多くいる印象を受けました。(私もそのうちの 1 人でした) これらのコードが ActiveRecord の機能によって、SQL が裏で発行されているという仕組みを理解しないまま、Rails ではアプリケーションを作ることができてしまうため、良くも悪くもその点が一つ、初学者の課題としてあると考えています。また、所感ではありますが初学者の内から、console から ActiveRecord を操作して理解を深める人もあまり多くないかと思っています。

### 解決したいこと

- 上記をまとめると、ActiveRecord に特化したサービスがあることでより MVC の理解が進み、初学者の学習効率を上げることに貢献できるのではないかと考えております。

## ターゲット層

- Rails 学習中の初学者の方

## 競合調査

- 現状では、ActiveRecord に特化した学習サービスは見つけることはできませんでした。

## 実装機能【MVP】

- ログイン機能
- ActiveRecord 回答機能 (SELECT 文のみ)
  - トライアル編あたりで考えています
  - それぞれの課題の作り方は SQL 関連の書籍から調査し考えていきたいです。
- パンくず機能
- 管理画面

## 実装機能【MVP リリース後】

- ActiveRecord 回答機能 (INSERT, UPDATE, DELETE)
  - User.save, update, destroy あたりはユーザごとに一時的にテーブルを用意する必要あると考えている為、実装の難易度が高い認識です。一方で、ActiveRecord の醍醐味は find_by や where などで関連テーブルのレコードを取得できるかどうかが主な操作のため、学習としての観点からは、User.save, update, destroy あたりは単純操作であるため、そこまで優先度は高くないと思っています。
- Twitter 共有機能
- 修了証機能

## 画面遷移図

- Figma：https://www.figma.com/file/uJ2WAtE2PDNFApeGNd5sOU/ActiveRecorder?type=design&node-id=0%3A1&mode=design&t=QAkKcFt8p6tVpRb0-1

## ER 図

- https://dbdiagram.io/d/64b6184b02bd1c4a5e3e17e7
  [![Image from Gyazo](https://i.gyazo.com/1bc2f8e89c29d79ff0db72e09a817c68.png)](https://gyazo.com/1bc2f8e89c29d79ff0db72e09a817c68)
