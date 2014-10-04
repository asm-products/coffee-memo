class MemosController < ApplicationController
  before_action :authenticate_user!

  def index
    load_memos
  end

  def show
    load_memo
  end

  def new
    build_memo
  end

  def create
    build_memo
    save_memo || render('new')
  end

  def edit
    load_memo
    build_memo
  end

  def update
    load_memo
    build_memo
    save_memo || render('edit')
  end

  def destroy
    load_memo
    @memo.destroy
    redirect_to root_url, alert: t('controllers.memos_controller.destroy')
  end

  private

  def load_memo
    @memo ||= memo_scope.to_a
  end

  def load_memo
    @memo ||= memo_scope.find(params[:id])
  end

  def build_memo
    @memo ||= memo_scope.build
    @memo.attributes = memo_params
  end

  def save_memo
    return false unless @memo.save
    redirect_to @memo, notice: t('controllers.memos_controller.save')
  end

  def memo_scope
    current_user.memos
  end

  # rubocop:disable Metrics/MethodLength
  def memo_params
    memo_params = params[:memo]
    return {} unless memo_params
    memo_params.permit(:coffee_shop,
                       :kind_of_coffee,
                       :origin,
                       :taste,
                       :aroma,
                       :mood,
                       :barrista)
  end
  # rubocop:enable Metrics/MethodLength
end
