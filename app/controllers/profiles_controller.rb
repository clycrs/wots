class ProfilesController < ApplicationController

  def show     
    @user = current_user
    @minicasts = @user.casts.where(format: "minicast")
  end

 
end
