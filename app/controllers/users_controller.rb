class UsersController < ApplicationController
  before_action :get_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to e-Shop!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def get_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
    end
end