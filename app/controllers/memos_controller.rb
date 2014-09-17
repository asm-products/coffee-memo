class MemosController < ApplicationController
  before_action :set_memo, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  def index
    @memos = Memo.all
  end

  def show
  end

  def new
    @memo = @user.memos.new
  end

  def edit
  end

  def create
    @memo = @user.memos.new(memo_params)
    @memo.user = current_user
    if @memo.save
      redirect_to user_memos_path(@user), notice: 'Memo was successfully created.'
    else
      render :new
    end
  end

  def update
    if @memo.update(memo_params)
      redirect_to user_memo_path, notice: 'Memo updated.'
    else
      render :edit
    end
  end

  def destroy
    if @memo.destroy
      redirect_to user_memos_url, notice: 'Memo was successfully destroyed.'
    end
  end

  private
    def set_memo
      @memo = Memo.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memo_params
      params.require(:memo).permit(:coffee_shop, :kind_of_coffee, :origin, :taste, :aroma, :mood, :barrista)
    end
end
