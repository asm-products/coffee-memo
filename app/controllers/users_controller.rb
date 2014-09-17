class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :require_correct_user, only: [:edit, :update, :destroy]
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @memos = @user.memos
  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  def new

  end

  def create

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # log em out too!
    session[:user_id] = nil
    redirect_to root_url, alert: "Your account has been deleted"
  end

private
  def require_correct_user
    @user = User.find(params[:id])
    redirect_to root_url unless current_user
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email)
  end
end
