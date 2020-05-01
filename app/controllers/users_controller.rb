class UsersController < ApplicationController
  
  def index
  end
  
  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.order("created_at DESC").page(params[:page]).per(3)
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    current_user.update(update_params)
  end
  
  private
  def update_params
    params.require(:user).permit(:store_name, :zip_cord, :loc, :phone, :email, :hp_url, :remarks, :delivery, :take_out, :start_time, :end_time, :mon_hol,:tue_hol, :wed_hol, :thu_hol, :fri_hol, :sat_hol, :sun_hol, :hol_hol, :image)
  end
  
end
