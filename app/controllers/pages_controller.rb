class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def welcome
  end

  def intro
  end

  def home
    @podcasts = Cast.podcasts
    @minicasts = Cast.minicasts

    # mapbox markers podcasts
    @pod_markers = @podcasts.geocoded.map do |podcast|
      {
        lat: podcast.latitude,
        lng: podcast.longitude,
        infoWindow: render_to_string(partial: "podcasts/info_window_pod", locals: { podcast: podcast }),
        image_url: helpers.asset_url('components/pin-podcast.svg')
      }
    end

    # mapbox markers minicasts
    @mini_markers = @minicasts.geocoded.map do |minicast|
      {
        lat: minicast.latitude,
        lng: minicast.longitude,
        infoWindow: render_to_string(partial: "minicasts/info_window_mini", locals: { minicast: minicast }),
        image_url: helpers.asset_url('components/pin-minicast.svg')
      }
    end

    @markers = @pod_markers + @mini_markers
  end
end
