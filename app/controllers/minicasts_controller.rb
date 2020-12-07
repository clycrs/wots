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
    if cast_params[:audio].present?
      audio_data = Base64.decode64(cast_params[:audio].gsub("data:audio/mpeg-3;base64,", ""))
      io = StringIO.new(audio_data)
      @minicast.audio.attach(io: io, filename: 'audio.mp3', content_type: 'audio/mpeg')
    end
    @minicast.save!
    redirect_to profile_path
  end

  def cast_params
    params.require(:cast).permit(:title, :description, :localisation, :theme, :sub_category_ids, :audio)
  end
end
