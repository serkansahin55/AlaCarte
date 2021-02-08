class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites, status: :ok
    end
end
