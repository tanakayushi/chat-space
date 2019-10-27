# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* chat-space DB設計
## usersテーブル
|column|type|options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false, index:true|
### Association
- has_many :user_gruops
- has_many :chats

## gruopsテーブル
|column|type|options|
|------|----|-------|
|name|string||
### Association
- has_many :user_gruops
- has_many :chats

## user_gruopsテーブル
|column|type|options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :gruop

## chatsテーブル
|column|type|options|
|------|----|-------|
|body|text||
|image|text||
|user_id|references|null: false, foreign_key: true|
|gruop_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :gruop

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

