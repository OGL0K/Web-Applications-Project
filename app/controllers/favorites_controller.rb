class FavoritesController < ApplicationController

  def index
  end

  def update
    favorite = FavoriteSong.where(song: Song.find(params[:song]))

    if favorite == []
      # Create the favorite
      FavoriteSong.create(song: Song.find(params[:song]))
      @favorite_exists = true
    else
      # Delete the favorite(s)
      favorite.destroy_all
      @favorite_exists = false
    end

    respond_to do |format|
      format.html{}
      format.js{}
    end
  end
end
