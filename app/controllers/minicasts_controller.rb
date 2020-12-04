class MinicastsController < ApplicationController

  # def index
  #   @minicasts = Cast.minicasts
  # end

  def show
    @minicast = Cast.find(params[:id])
  end

  def new
    @minicast = Cast.new
  end

  def create
    @minicast = Cast.new(cast_params)
    @minicast.user = current_user
    @minicast.published_date = Date.today
    @minicast.format = "minicast"
    @minicast.save!
    redirect_to profile_path
    # else
    #   render "new"
    # end
  end

  def cast_params
    params.require(:cast).permit(:title, :description, :localisation, :theme, :sub_category_ids, :audio)
  end



end
