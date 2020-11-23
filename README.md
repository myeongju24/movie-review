# テーブル設計

## users テーブル

| Column             | Type     | Options     |
| ------------------ | -------- | ----------- |
| name               | string   | null: false |
| email              | string   | null: false |
| encrypted_password | string   | null: false |
| favorite_movie_id  | integer  | null: false |
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