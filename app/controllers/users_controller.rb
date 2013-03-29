class UsersController < ApplicationController
  
  def create
      @user = User.new(params[:user])
        if @user.save
          sign_in @user
          flash[:success] = "Welcome to the Sample App!"
          redirect_to @user
        else
          render "static_pages/signup"
        end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
end
