class PracticesController < ApplicationController
  def index
  end

  def show
    begin 
      @practice = Practice.find_by(id: params[:id])
    rescue 
      redirec_to lessons_path
    end
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
    @execute_active_record_string = params[:name]
    @execute_query_string = eval(@execute_active_record_string).to_sql
    @execute_query = ActiveRecord::Base.connection.execute(@execute_query_string)

    @example_answer = eval(Practice.find_by(id: params[:id]))
    render :new
  end

  def editor
    @practice = Practice.find_by(id: params[:id])
  end

  def sql
    disallowed_queries = ["create","save","save!","update","update!","delete","delete!","destroy","destroy!","delete_all","update_all","update_attribute", "update_columns", "update_column","destroy_all","increment!", "decrement!", "toggle!","touch"].freeze
    if request_query = params[:name]
      DISALLOWED_QUERIES.each do |query| 
      if request_query.includes?(query)
        @execute_query_string = ""
        return render layout: false, content_type: 'text/vnd.turbo-stream.html'
      end
    end
    @execute_active_record_string = params[:name]
    @execute_query_string = eval(@execute_active_record_string).to_sql
    @execute_query = ActiveRecord::Base.connection.execute(@execute_query_string)
    end
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end

  def execute
     @practice = Practice.find_by(id: params[:id])
     render layout: sql, content_type: 'text/vnd.turbo-stream.html'
  end

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
