class Api::V1::MenuItemsController < ApplicationController
    def index
        @menu_items = MenuItem.all
        render json: @menu_items, status: :ok
    end

    def show
        @menu_item = MenuItem.find(params[:id])
        render json: @menu_item, status: :ok
    end

    def delete_favorites
        @menu_item = MenuItem.find(params[:menu_item_id])
        @menu_item.favorites.destroy_all

        render json: @menu_item, status: :ok
    end
end
