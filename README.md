# アプリケーション名 「movie-review」

# アプリケーション概要  ユーザー登録機能、レビュー投稿機能、コメント投稿機能

# URL デプロイは未実装

# テスト用アカウント email:hoge@gmail.com  pass:abcd1234

# 利用方法 アカウントを作成し、映画の評論、レビューを投稿する。他者の投稿にコメントすることも可能

# 目指した課題解決 映画好きな人の,映画好きな人と繋がりたいという欲求と、他者の映画に対する意見、レビューをみたいという課題を解決するため


# テーブル設計

## users テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| name               | string   | null: false |
| email              | string   | null: false |
| password           | string   | null: false |
| encrypted_password | string   | null: false |
| favorite_movie     | string   | null: false |
| favorite_genre_id  | integer  | null: false |

### Association

- has_many : reviews
- has_many : comments

## Reviews テーブル

| Column    | Type    | Options     |
| ----------| ------- | ----------- |
| title     | string  | null: false |
| points_id | integer | null: false |
| summary   | string  | null: false |
| contents  | text    | null: false |

### Association

- belongs_to : user
- has_many   : comments

## Comments テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| text   | string     | null: false       |
| user   | references | foreign_key: true |
| review | references | foreign_key: true |

### Association
- belongs_to : user
- belongs_to : Review