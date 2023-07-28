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
   description: '初級問題に挑戦してみましょう！',
)

Lesson.create!(
   lesson_type: '中級編',
   description: '中級問題に挑戦してみましょう！',
)

Chapter.create!(
   title: 'allメソッドを使ってみよう!',
   order: 1,
   lesson_id: 1
)

Chapter.create!(
   title: 'whereメソッドを使ってみよう!',
   order: 2,
   lesson_id: 1
)

Practice.create!(
   example_answer: 'User.all',
   description: 'usersテーブルから全てのレコードを取得してください',
   chapter_id: 1,
)

Practice.create!(
   example_answer: 'Post.where(id: 2)',
   description: 'postsテーブルからidが2のレコードを取得してください',
   chapter_id: 2,
)



