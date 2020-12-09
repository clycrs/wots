class PodcastsController < ApplicationController
  def index
    @podcasts = Cast.podcasts
  
  end

  def show
    @podcasts         = Cast.where(format: "podcast")
    @podcast          = @podcasts.find(params[:id])

    @index_podcast    = Cast.podcasts.index(@podcast) + 1

    @previous_podcast = Cast.podcasts[@index_podcast - 2] || Cast.last
    @next_podcast     = Cast.podcasts[@index_podcast] || Cast.first
    
    @comment          = Comment.new
    @comments         = @podcast.comments
  end
end
