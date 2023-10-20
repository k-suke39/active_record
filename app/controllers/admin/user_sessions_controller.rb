# frozen_string_literal: true

module Admin
  class UserSessionsController < Admin::BaseController
    skip_before_action :authenticate
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
end
