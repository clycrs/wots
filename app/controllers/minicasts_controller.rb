class MinicastsController < ApplicationController

  # def index
  #   @minicasts = Cast.minicasts
  # end

  def show
    @minicast = Cast.find(params[:id])
  end

  def create
    @minicast = Cast.new(cast_params)
      @minicast.save
    # redirect_to profile_path
    # else
    #   render "new"
    # end
  end

  def cast_params
    params.require(:cast).permit(:title, :description, :theme)
  end

end
