class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def create
    user = User.new(user_params)
    @users = User.all
    user_email = []
    @users.each do |u|
      user_email << u.email
    end

    if user.save
      if user_email.include?user.email
          redirect_to '/login'
      else
          session[:user_id] = user.id
          redirect_to '/'
      end
    else
      redirect_to '/signup'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
