class MinicastsController < ApplicationController

  def index
    @minicasts = Cast.minicasts
  end

  def show
    @minicasts         = Cast.where(format: "minicast")
    @minicast          = @minicasts.find(params[:id])

    # @index_minicast    = Cast.minicasts.index(@miniast) + 1

    # @previous_minicast = Cast.minicasts[@index_minicast - 2]
    # @next_minicast     = Cast.minicasts[@index_minicast]
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
