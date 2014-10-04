class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    load_user
  end

  def edit
    load_user
    build_user
  end

  def update
    load_user
    build_user
    save_user || render('edit')
  end

  def destroy
    load_user
    @user.destroy
    redirect_to root_url, alert: t('controllers.users_controller.destroy')
  end

  private

  def load_user
    @user ||= user_scope
  end

  def build_user
    @user ||= user_scope.build
    @user.attributes = user_params
  end

  def save_user
    return false unless @user.save
    redirect_to @user, notice: t('controllers.users_controller.save')
  end

  def user_scope
    current_user
  end

  def user_params
    user_params = params[:user]
    return {} unless user_params
    user_params.permit(:username, :first_name, :last_name, :email)
  end
end
