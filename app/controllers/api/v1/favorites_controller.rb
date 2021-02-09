class Api::V1::FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites, status: :ok
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite, status: :ok
    end


    def create
        @favorite = Favorite.new(favorite_params)
        
        if @favorite.save
            render json: @favorite, status: :ok
        else
            render json: @favorite.errors.messages, status: 422
        end
    end


    def destroy
        favoriteId = @note.id
        @favorite.destroy
        render json: {message:"Zap! Favorite deleted", favoriteId:favoriteId}
    end

    def update
        @favorite.update(favorite_params)
        render json: @favorite, status: 200
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :menu_item_id)
    end
end
