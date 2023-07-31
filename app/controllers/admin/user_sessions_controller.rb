class Admin::UserSessionsController < ApplicationController
  layout 'admin/layouts/application'
  def new; end
  
  def create
    @admin_user = login(params[:email], params[:password])

    if @admin_user
      redirect_to admin_root_path
    else
      render :new
    end
  end
end
