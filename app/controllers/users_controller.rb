class UsersController < ApplicationController

  def show 
    
    @user = Users.find(params[:id])
    @minicasts = @user.casts.where(format: "minicast")
  end
 
  

end
