# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate
  helper_method :logged_in?

  private

  def logged_in?
    !!session[:user_id]
  end

  def authenticate
    return if logged_in?

    redirect_to root_path, alert: 'ログインしてください'
  end
end
