class HomeController < ApplicationController
  skip_before_action :authenticate
  def top;end

  def terms_of_service;end
  
  def privacy_policy;end
end
