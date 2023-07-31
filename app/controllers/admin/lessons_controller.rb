class Admin::LessonsController < Admin::BaseController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find_by(id: params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
  end

  def edit
    @lesson = Lesson.find_by(id: params[:id])
  end

  def update
    binding.pry
    @lesson = Lesson.find_by(id: params[:id])
    if @lesson.update(lesson_params)
      redirect_to admin_lessons_path, notice: '更新に成功しました'
    else    
      render :edit status: :unprocessable_entity, alert: '更新に失敗しました'
    end
  end

  def destroy
  end
  
  private

  def lesson_params
    params.require(:lesson).permit(:lesson_type, :description)
  end
end
