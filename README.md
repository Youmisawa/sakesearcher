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
|tweetname|string|null: false|
|text|text|null: false|
|image|text|null: false|
|alc|integer||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :reviews
- has_many :tweet_tags, dependent: :destroy
- has_many :tags, through: :tweet_tags

## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :user

## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||

### Association
- has_many :tweet_tags, dependent: :destroy
- has_many :tweets, through: :tweet_tags

## tweet_tagsテーブル

|Column|Type|Options|
|------|----|-------|
|tweet_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :tweet
- belongs_to :tag
