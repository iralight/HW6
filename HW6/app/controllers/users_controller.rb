class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = "Thanks for signing up!"
  		redirect_to root_path
  	else
  		flash[:notice] = "There was error signing you up."
  		redirect_to new_user_path
  	end
  end

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :salt, :encrypted_password)
  end
end
 