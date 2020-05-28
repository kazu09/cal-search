class PostsController < ApplicationController
# 　index使用なし
  # def index
  #   @posts = Post.includes(:user)
  # end

  # マイページの新規作成ページ及び編集ページ、詳細ページの機能
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    # 入力確認の分岐（newページ)
    if @post.save
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
    # マイページの編集機能および削除機能
  def update
    @post = Post.find(params[:id])
    # 入力確認の分岐（editページ)
    if @post.update(post_params)
      redirect_to user_path(current_user)
    else
      render "new"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(current_user)
  end

  private
  def post_params
    params.require(:post).permit(:morning, :lunch, :dinner, :day).merge(user_id: current_user.id)
  end

end
