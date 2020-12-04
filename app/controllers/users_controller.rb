class UsersController < ApplicationController

  def show
    
    @user = User.find(params[:id])
    @minicasts = @user.casts.where(format: "minicast")
  end
 
  

end
