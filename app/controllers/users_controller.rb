class UsersController < ApplicationController
  # マイページの表示ログイン後の表示等
before_action :authenticate_user!, except: [:show]
before_action :move_to_index, except: [:index]

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order('day DESC')
  end

  private
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end

