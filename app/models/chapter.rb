class Chapter < ApplicationRecord
  has_many :practices, dependent: :destroy
  belongs_to :lesson
end
