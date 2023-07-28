require 'faker'

User.create!(
   email: 'lava_studio_syuunana@test.com',
   name: 'TanakaYogini',
   password: 'password'
)

User.create!(
   email: 'debug_love@test.com',
   name: 'YamamotoDebug',
   password: 'password'
)

User.create!(
   email: 'zwitter@test.com',
   name: 'TsuzakiYushitarou',
   password: 'password'
)

User.create!(
   email: 'zon100@test.com',
   name: 'AbekawaZon100',
   password: 'password'
)


Post.create!(
   title: 'ガクです',
   description: 'Rails基礎が難しいですにゃー',
)

Post.create!(
   title: 'ざっきーです',
   description: 'XじゃなくてZwitterやろうぜ!',
)

Post.create!(
   title: 'yushiです',
   description: '勉強会やりすぎ',
)

Post.create!(
   title: 'ハヤシです',
   description: '娘っちが可愛いです',
)

Post.create!(
   title: 'ざっきーです',
   description: 'やっぱりtwitterが一番いいよね、、!',
)

Post.create!(
   title: 'タナカです',
   description: 'lavastudio通ってます',
)

Post.create!(
   title: 'デバッグ姉さんです',
   description: 'binding.pryと結婚します',
)

Lesson.create!(
   lesson_type: 'トライアル編',
   description: 'トライアル問題に挑戦してみましょう！',
)

Lesson.create!(
   lesson_type: '初級編',
   description: '現在準備中です。',
)

Lesson.create!(
   lesson_type: '中級編',
   description: '現在準備中です。',
)

Chapter.create!(
   title: '【CHAPTER1】allメソッドを使ってみよう!',
   order: 1,
   lesson_id: 1
)

Chapter.create!(
   title: '【CHAPTER2】whereメソッドを使ってレコードを取得してみよう!',
   order: 2,
   lesson_id: 1
)

Chapter.create!(
   title: '【CHAPTER3】whereメソッドを使って複数レコードを取得してみよう!',
   order: 2,
   lesson_id: 1
)

Practice.create!(
   example_answer: 'User.all',
   description: 'allメソッドを使って、usersテーブルから全てのレコードを取得してください',
   chapter_id: 1,
)

Practice.create!(
   example_answer: 'Post.where(id: 2)',
   description: 'whereメソッドを使って、postsテーブルからidが2のレコードを取得してください',
   chapter_id: 2,
)

Practice.create!(
   example_answer: "Post.where(title: 'ざっきーです')",
   description: 'whereメソッドを使って、postsテーブルからtitleがざっきーですのレコードを取得してください',
   chapter_id: 2,
)



