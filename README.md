# README
<h1 align="center">Cal-Search</h1>

- カロリー投稿及びカロリー管理アプリです。
- TECH::CAMP 個人アプリ制作
- 作成期間 2020/5/24 ~ 2020/5/29

# アプリ紹介
## トップページ
![toppage-image](https://user-images.githubusercontent.com/64839248/85937509-26028900-b93f-11ea-83aa-6c89c9adffe1.png)
![toppage-details-image](https://user-images.githubusercontent.com/64839248/85937542-74b02300-b93f-11ea-85b8-3eacef0349cb.png)
## マイページ
![mypage-image](https://user-images.githubusercontent.com/64839248/85937576-bb058200-b93f-11ea-8bc7-6e78d8d07df0.png)
![mypage-details-image](https://user-images.githubusercontent.com/64839248/85937611-1df71900-b940-11ea-92c6-795ac2cb086f.png)

## :paperclip: 主な使用言語
### Ruby
### Ruby on Rails
### HTML
### Scss

## 機能紹介
- 新規会員登録・ログイン機能
- 未登録時でもカロリーの投稿が可能です。
- 未登録時でもカロリーの閲覧が可能です。
- ログイン時日付と今日のカロリーを投稿することによりカロリーの登録が可能です。
- マイページの詳細を確認すると入力したカロリーと1日のカロリー計算をして登録されます。 

## 実装内容の紹介
- カロリー投稿機能
- カロリー詳細確認機能
- カロリー投稿編集削除機能
- ログイン・新規会員登録機能
- ログイン時カロリー投稿機能
- ログイン時カロリー投稿編集削除機能
- ログイン時でもトップページカロリー投稿機能

## サイトURL紹介
- URL:https://cal-search.herokuapp.com/

# DB設計

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