class MinicastsController < ApplicationController

  def index
    @minicasts = Cast.minicasts
  end

  def show
    @minicasts         = Cast.where(format: "minicast")
    @minicast          = @minicasts.find(params[:id])


    @comment          = Comment.new
    @comments         = @minicast.comments


    @index_minicast    = Cast.minicasts.index(@minicast) + 1


    @previous_minicast = Cast.minicasts[@index_minicast - 2] || Cast.minicasts.last
    @next_minicast     = Cast.minicasts[@index_minicast] || Cast.minicasts.first
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
      audio_data = Base64.decode64(cast_params[:audio].gsub(/data:.+base64,/, ''))
      io = StringIO.new(audio_data)
      @minicast.audio.attach(io: io, filename: 'audio.mp3', content_type: 'audio/mpeg')
    end
    @minicast.save!
    redirect_to profile_path
  end

  def destroy
    @minicasts = Cast.where(format: "minicast")
    @minicast = @minicasts.find(params[:id])
    @minicast.destroy
    redirect_to profile_path
  end

  private

  def cast_params
    params.require(:cast).permit(:title, :description, :localisation, :theme, :sub_category_ids, :audio)
  end
end
