class SongsController < ApplicationController
  before_action :get_artist, only: [:show, :edit, :update]
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(get_params)
    redirect_to @song
  end

  def edit
  end

  def update
    @song.update(get_params)
    redirect_to @song
  end

  private
  def get_artist
    @song = Song.find(params[:id])
  end

  def get_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
