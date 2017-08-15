class UsersController < ApplicationController
  before_action :require_login, only: [:index]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      login(@user)
      flash[:success] = "User created."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to root_path
  end

  def index
    @users = User.all
  end

  def image_url_or_default
    avatar.url || image_url.presence || "http://4.bp.blogspot.com/-XzHMAVCvT3M/Vib9gnQOp1I/AAAAAAAAAPs/Nt8y2vaK7AE/s1600/h9-5e17a.jpg"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :gender, :password_confirmation, :avatar)
  end
end
