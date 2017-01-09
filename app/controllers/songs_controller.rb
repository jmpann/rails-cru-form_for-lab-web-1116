class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def index
    @songs=Song.all
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.create(name: params[:name], artist_id: params[:artist_id], genre_id: params[:genre_id])
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(name: params[:name], artist_id: params[:artist_id], genre_id: params[:genre_id])
    redirect_to song_path(@song)
  end
end
