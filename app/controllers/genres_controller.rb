class GenresController < ApplicationController
  before_action :get_artist, only: [:show, :edit, :update]
  def index
    @genres = Genre.all
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(get_params)
    redirect_to @genre
  end

  def edit
  end

  def update
    @genre.update(get_params)
    redirect_to @genre
  end

  private
  def get_artist
    @genre = Genre.find(params[:id])
  end

  def get_params
    params.require(:genre).permit(:name)
  end
end
