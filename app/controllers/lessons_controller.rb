# frozen_string_literal: true

class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end
end
