# frozen_string_literal: true

module Admin
  class LessonsController < Admin::BaseController
    def index
      @lessons = Lesson.all
    end

    def show
      @lesson = Lesson.find_by(id: params[:id])
    end

    def new
      @lesson = Lesson.new
    end

    def edit
      @lesson = Lesson.find_by(id: params[:id])
    end

    def create
      @lesson = Lesson.new(lesson_params)
      if @lesson.save
        redirect_to admin_lessons_path, notice: '登録に成功しました'
      else
        render :edit, status: :unprocessable_entity, alert: '登録に失敗しました'
      end
    end

    def update
      @lesson = Lesson.find_by(id: params[:id])
      if @lesson.update(lesson_params)
        redirect_to admin_lessons_path, notice: '更新に成功しました'
      else
        render :edit, status: :unprocessable_entity, alert: '更新に失敗しました'
      end
    end

    def destroy
      @lesson = Lesson.find_by(id: params[:id])
      @lesson.destroy!
      redirect_to admin_lessons_path, status: :see_other, notice: '削除に成功しました'
    end

    private

    def lesson_params
      params.require(:lesson).permit(:lesson_type, :description)
    end
  end
end
