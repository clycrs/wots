class PodcastsController < ApplicationController
  def index
    @podcasts = Cast.podcasts
  end

  def show
    @podcast = Cast.find(params[:id])
  end
end
