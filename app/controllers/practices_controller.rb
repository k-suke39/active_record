class PracticesController < ApplicationController
  def index
  end

  def show
    @practice = Practice.find_by(id: params[:id])
  end

  def judge
    begin
      @practice = Practice.find_by(id: params[:id])
      example_answer = Practice.find_by(id: params[:id]).example_answer
      example_answer_query = ActiveRecord::Base.connection.execute(eval(example_answer).to_sql)
      answer_record = params[:name]
      answer_record_query = ActiveRecord::Base.connection.execute(eval(answer_record).to_sql)
      example_answer_query == answer_record_query ? @result = true : @result = false
      render :new
    rescue
      @result = false
      render :new
    end
  end
     
  def new
  end

  def create
    binding.pry
    @execute_active_record_string = params[:name]
    @execute_query_string = eval(@execute_active_record_string).to_sql
    @execute_query = ActiveRecord::Base.connection.execute(@execute_query_string)

    @example_answer = eval(Practice.find_by(id: params[:id]))
    render :new
  end

  def editor

  end

  def sql
     if params[:name]
       @execute_active_record_string = params[:name]
       @execute_query_string = eval(@execute_active_record_string).to_sql
       @execute_query = ActiveRecord::Base.connection.execute(@execute_query_string)
   end
   render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
  def execute;end

  def er
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
  def db
    @users = User.all
    @posts = Post.all
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end

  def answer
    example_answer_string = Practice.find_by(id: params[:id]).example_answer
    execute_query_string = eval(example_answer_string).to_sql
    @execute_query = ActiveRecord::Base.connection.execute(execute_query_string)
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
end
