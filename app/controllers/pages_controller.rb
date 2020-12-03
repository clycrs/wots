class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @podcasts = Cast.podcasts

    # Geocoding mapbox
    @markers = @podcasts.geocoded.map do |podcast|
      {
        lat: podcast.latitude,
        lng: podcast.longitude,
        infoWindow: render_to_string(partial: "podcasts/info_window", locals: { podcast: podcast }),
        image_url: helpers.asset_url('components/pin-podcast.svg')
      }
    end
  end
end
