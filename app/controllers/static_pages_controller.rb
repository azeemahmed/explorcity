class StaticPagesController < ApplicationController
  def home
    
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
  def learn
  end
  
   def signup
     @user = User.new
   end
  

end
