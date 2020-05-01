class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.page(params[:page]).per(3).order('updated_at DESC')
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    Tweet.create(img: tweet_params[:img], text: tweet_params[:text], user_id: current_user.id)
  end
  
  def update
    current_user.update(tweet_params)
  end
  
  private
  def tweet_params
    params.require(:tweet).permit(:img, :text, :img_cache, :remove_img)
  end
  
end
