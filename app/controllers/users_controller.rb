class UsersController < ApplicationController
  # マイページの表示ログイン後の表示等
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end
end

