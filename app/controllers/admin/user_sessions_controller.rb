class Admin::UserSessionsController < Admin::BaseController
  layout 'admin/layouts/admin_login'
  def new; end
  
  def create
    @admin_user = login(params[:email], params[:password])

    if @admin_user
      redirect_to admin_root_path, notice: 'ログインに成功しました'
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    logout
    redirect_to admin_login_path, status: :see_other, notice: 'ログアウトに成功しました'
  end
end
