class ArtistsController < ApplicationController
before_action :find_artist_by_id, only: [:show, :update, :edit]
# after_action :artist_show_path, only: [:create]

  def show
    # @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    ### :attribute if you want to pass in the value of that sybmol key. attribute: :value if you want to pass in a hash of a key-value pair

    redirect_to artist_path(@artist)
  end

  def edit
    # @artist=Artist.find(params[:id])
  end

  def update
    # @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  # def artist_show_path(artist)
  #   @artist = artist
  #   redirect_to artist_path(@artist)
  # end

  def find_artist_by_id
    @artist=Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
