class PracticesController < ApplicationController
  def index
  end

  def new
  end

  def create
    render :new
  end
  def editor;end
  def sql
     @execute_active_record_string = params[:name]
     @execute_query_string = eval(@execute_active_record_string).to_sql
     @execute_query = ActiveRecord::Base.connection.execute(@execute_query_string)
   end
  def execute;end
  def db
    @users = User.all
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
  def er
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
  def answer
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
end
