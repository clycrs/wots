class MinicastsController < ApplicationController

  # def index
  #   @minicasts = Cast.minicasts
  # end

  def show
    @minicast = Cast.find(params[:id])
  end

end
