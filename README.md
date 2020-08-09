# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|name|string|null: false, unique: true|

### Association
- has_many :tweets
- has_many :reviews

## tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|text|text|null: false|
|tag|text||
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :reviews

## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :user
