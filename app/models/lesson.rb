class Lesson < ApplicationRecord
  enum lesson_type: { トライアル編: 0, 初級編: 1, 中級編: 2, 上級編: 3 }
end
