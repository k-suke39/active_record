# frozen_string_literal: true

require 'faker'

User.create!(
  email: 'satoh@example.com',
  name: '佐藤さとこ',
  password: 'password'
)

User.create!(
  email: 'tanaka@example.com',
  name: '田中なた子',
  password: 'password'
)

User.create!(
  email: 'yamamoto@example.com',
  name: '山本もと美',
  password: 'password'
)

User.create!(
  email: 'abe@example.com',
  name: '阿部太郎',
  password: 'password'
)

User.create!(
  email: 'yamada@example.com',
  name: '山田マヤ',
  password: 'password'
)

Post.create!(
  title: '佐藤です',
  description: 'プログラミング楽しい！'
)

Post.create!(
  title: '山田です',
  description: 'Xやろうぜ!'
)

Post.create!(
  title: '田中です',
  description: 'いい天気ですね！'
)

Post.create!(
  title: '山本です',
  description: '娘っちが可愛いです'
)

Post.create!(
  title: '山田です',
  description: 'やっぱりtwitterが一番いいよね!'
)

Post.create!(
  title: '阿部です',
  description: '犬の散歩に行ってきました'
)

Post.create!(
  title: '阿部です',
  description: 'すぐ眠くなります、、、'
)

AdminUser.create!(
  first_name: 'keisuke',
  last_name: 'sakuma',
  email: 'pacdracoris@example.com',
  password: 'pacdracoris'
)

Lesson.create!(
  lesson_type: 'トライアル編',
  description: 'トライアル問題に挑戦してみましょう！'
)

Lesson.create!(
  lesson_type: '初級編',
  description: '現在準備中です。'
)

Lesson.create!(
  lesson_type: '中級編',
  description: '現在準備中です。'
)

Chapter.create!(
  title: 'allメソッドを使ってみよう!',
  order: 1,
  lesson_id: 1
)

Chapter.create!(
  title: 'whereメソッドを使ってレコードを取得してみよう!',
  order: 2,
  lesson_id: 1
)

Chapter.create!(
  title: 'whereメソッドを使って複数レコードを取得してみよう!',
  order: 3,
  lesson_id: 1
)

Practice.create!(
  example_answer: 'User.all',
  description: '-CHAPTER1- allメソッドを使って、usersテーブルから全てのレコードを取得してください',
  chapter_id: 1
)

Practice.create!(
  example_answer: 'Post.where(id: 2)',
  description: '-CHAPTER2- whereメソッドを使って、postsテーブルからidが2のレコードを取得してください',
  chapter_id: 2
)

Practice.create!(
  example_answer: "Post.where(title: '山田です')",
  description: '-CHAPTER3- whereメソッドを使って、postsテーブルからtitleが山田ですのレコードを取得してください',
  chapter_id: 3
)
