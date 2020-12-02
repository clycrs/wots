class PodcastsController < ApplicationController
  def index
    @podcasts = Cast.podcasts

    # Geocoding mapbox
    @markers = @podcasts.geocoded.map do |podcast|
      {
        lat: podcast.latitude,
        lng: podcast.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { cast: cast })
      }
    end
  end

  def show
    @podcast = Cast.find(params[:id])
  end
end
