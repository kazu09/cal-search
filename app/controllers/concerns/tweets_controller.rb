class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
    # ページネーションの実装
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(6)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    # 入力確認の分岐（newページ)
    if @tweet.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    # 入力確認の分岐（editページ)
    if @tweet.update(tweet_params)
      redirect_to tweet_path(@tweet.id)
    else
      render "edit"
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

  def search
    # 検索機能実装
    @tweets = Tweet.search(params[:keyword])
    # ページネーションの実装
    @tweets = @tweets.page(params[:page]).per(6)

    # インクリメンタルサーチ実装予定なし
    # respond_to do |format|
    #   format.html
    #   format.json
    # end

  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :text, :image, :data)
  end

end