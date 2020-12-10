class PodcastsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @podcasts = Cast.podcasts

  end

  def show
    @podcasts         = Cast.where(format: "podcast")
    @podcast          = @podcasts.find(params[:id])

    @index_podcast    = Cast.podcasts.index(@podcast) + 1







    @previous_podcast = Cast.podcasts[@index_podcast - 2] || Cast.podcasts.last
    @next_podcast     = Cast.podcasts[@index_podcast] || Cast.podcasts.first


    @comment          = Comment.new

    @comments         = @podcast.comments

  end
end
