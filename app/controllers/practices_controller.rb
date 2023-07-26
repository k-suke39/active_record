class PracticesController < ApplicationController
  def index
  end

  def new
  end

  def create
    render :new
  end
  def editor;end
  def sql;end
  def execute;end
  def db
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
  def er
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
  def answer
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end
end
