class Api::V1::ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews, status: :ok
    end

    def show
        @review = Review.find(params[:id])
        render json: @review, status: :ok
    end


    def create
        @review = Review.new(review_params)
        
        if @review.save
            render json: @review, status: :ok
        else
            render json: @review.errors.messages, status: 422
        end
    end

    def destroy
        @review = Review.find(params[:id])
        review_id = @review.id
        @review.destroy
        render json: { message: "Zap! Review deleted", id: review_id }, status: :ok
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        render json: @review, status: 200
    end

    private

    def review_params
        params.require(:review).permit(:text, :rating, :user_id, :restaurant_id)
    end
end
