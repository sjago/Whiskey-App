class UsersController < ApplicationController

  def index

    @users = User.all
    
  end

  def new

    @user = User.new
    
  end

  def create

    attrs = params.require(:user).permit(:name, :email, :age)
    @user = User.new(attrs)

    @user.save
    redirect_to user_path(@user)
    
  end

  def show

    @current_user = User.find(params[:id])

  end

end