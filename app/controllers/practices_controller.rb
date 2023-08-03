# frozen_string_literal: true

class PracticesController < ApplicationController
  before_action :set_practice, only: [:show, :judge, :execute, :answer]
  before_action :set_warning_queries, only: [:judge, :sql]

  def show
  end

  def judge
    answer_record = params[:name]
    if @warning_queries.any? { |str| answer_record.include?(str) }
      render_modal_with_result(false) and return
    end
    example_answer_query = eval(@practice.example_answer)
    answer_record_query = eval(answer_record)
    render_modal_with_result(example_answer_query == answer_record_query)
  rescue StandardError
    render_modal_with_result(false)
  end

  def editor
    @practice = Practice.find_by(id: params[:id])
  end

  def sql
    if params[:name] && !safe_query?(params[:name])
      render layout: false, content_type: 'text/vnd.turbo-stream.html'
    end
      execute_active_record_string = params[:name]
      execute_query(execute_active_record_string)
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end

  def execute
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
    execute_query(@practice.example_answer)
    render layout: false, content_type: 'text/vnd.turbo-stream.html'
  end

  private

  def set_practice
    @practice = Practice.find_by(id: params[:id])
  rescue StandardError
    redirect_to lessons_path
  end

  def set_warning_queries
    @warning_queries = ["create", "delete", "update", "delete_all", "update_attributes", "update_column", "Admin", "Login"]
  end

  def safe_query?(query)
    @warning_queries.none? { |str| query.include?(str) }
  end

  def execute_query(query_string)
    @execute_query = eval(query_string)
    @execute_query = @execute_query.is_a?(Array) ? @execute_query : Array(@execute_query)
  end

  def render_modal_with_result(result)
    @result = result
    render :modal
  end
end
