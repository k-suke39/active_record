# frozen_string_literal: true

module Admin
  class ChaptersController < Admin::BaseController
    def index
      @chapters = Chapter.all
    end

    def show
      @chapter = Chapter.find_by(id: params[:id])
    end

    def new
      @chapter = Chapter.new
    end

    def edit
      @chapter = Chapter.find_by(id: params[:id])
    end

    def create
      @chapter = Chapter.new(chapter_params)
      if @chapter.save
        redirect_to admin_chapters_path, notice: '登録に成功しました'
      else
        render :new, status: :unprocessable_entity, alert: '登録に失敗しました'
      end
    end

    def update
      @chapter = Chapter.find_by(id: params[:id])
      if @chapter.update(chapter_params)
        redirect_to admin_chapters_path, notice: '更新に成功しました'
      else
        render :edit, status: :unprocessable_entity, alert: '更新に失敗しました'
      end
    end

    def destroy
      @chapter = Chapter.find_by(id: params[:id])
      @chapter.destroy!
      redirect_to admin_chapters_path, status: :see_other, notice: '削除に成功しました'
    end

    private

    def chapter_params
      params.require(:chapter).permit(:title, :order, :lesson_id)
    end
  end
end
