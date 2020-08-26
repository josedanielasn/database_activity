class UserController < ApplicationController
  def index
    @user = User.all
  end

  def new
  end

    
  def create
    @user = User.new(user_params)
  
    if @user.save
      redirect_to index_user_path
    else
      render 'new'
    end

  end

  def auth
    @user = User.find_by(username: params[:username])
    @result = @user.authenticate(params[:password])
    if result
      redirect_to index_user_path
    else
      render 'login'
    end
  end

  def login
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
