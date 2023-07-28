class ChaptersController < ApplicationController
  def show
    @chapters = Chapter.where(lesson_id: params[:id])
    @lesson = Lesson.find_by(params[:id])
  end
end
