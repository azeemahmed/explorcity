class SessionsController < ApplicationController
  
  def welcome
    
  end
  
  def new
    render 'new'
  end
  
  def create
    user=User.find_by_email(params[:session][:email])
    
    if user && user.authenticate(params[:session][:password])  
      sign_in user
      render "welcome"
    else
      flash[:error] = "Invalid Username/password. Please try again!"
      render "static_pages/home"
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end
