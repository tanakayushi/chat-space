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
|nickname|string|null: false|
### Association
- has_many :groups
- has_many :chats

## gruopsテーブル
|column|type|options|
|------|----|-------|
|g_name|string||
|user_id|integer|null: false|
### Association
- belongs_to :user
- has_many :chats

## chatsテーブル
|column|type|options|
|------|----|-------|
|body|text||
|image|text||
|user_id|integer|null: false, foreign_key: true|
|gruop_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :gruop

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

