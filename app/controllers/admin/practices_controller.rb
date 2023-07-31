class Admin::PracticesController < ApplicationController
  def index
    @practices = Practice.all
  end

  def show
    @practice = Practice.find_by(id: params[:id])
  end

  def new
    @practice = Practice.new
  end

  def create
    @practice = Practice.new(practice_params)
    if @practice.save
      redirect_to admin_practices_path, notice: '登録に成功しました'
    else  
      render :edit, status: :unprocessable_entity, alert: '登録に失敗しました'
    end
  end

  def edit
    @practice = Practice.find_by(id: params[:id])
  end

  def update
    @practice = Practice.find_by(id: params[:id])
    if @practice.update(practice_params)
      redirect_to admin_practices_path, notice: '更新に成功しました'
    else    
      render :edit, status: :unprocessable_entity, alert: '更新に失敗しました'
    end
  end

  def destroy
    @practice = Practice.find_by(id: params[:id])
    @practice.destroy!
    redirect_to admin_practices_path, status: :see_other, notice: '削除に成功しました'
  end
  
  private

  def practice_params
    params.require(:practice).permit(:practice_type, :description)
  end
end
