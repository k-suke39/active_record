# frozen_string_literal: true

class Chapter < ApplicationRecord
  has_many :practices, dependent: :destroy
  belongs_to :lesson, dependent: :destroy
end
