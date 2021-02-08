class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites, status: :ok
    end

    def create
        @favorite = Favorite.new(favorite_params)
        
        if @favorite.save
            render json: @favorite, status: :ok
        else
            render json: @favorite.errors.messages, status: 422
        end
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :menu_item_id)
    end
end
