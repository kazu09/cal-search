# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## tweetsテーブル

|Column|Type|Options|Options|Options|
|------|----|-------|-------|-------|
|title|string|null: false|unique: true|index:true|
|image|string|
|text|string|
|data|integer|null: false|

## usersテーブル

|Column|Type|Options|Options|Options|
|------|----|-------|-------|-------|
|name|string|null: false|index:true|
|password|string|null: false|
|email|string|null:false|unique: true|index:true|
|reset_password_token|string|

### Association
- has_many :posts

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|morning|integer|null: false|
|lunch|integer|null: false|
|dinner|integer|null: false|
|day|date|null: false|
|user_id|references|

### Association
- belongs_to :user