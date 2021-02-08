class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews, status: :ok
    end

    def create
        @review = Review.new(review_params)
        
        if @review.save
            render json: @review, status: :ok
        else
            render json: @review.errors.messages, status: 422
        end
    end

    private

    def review_params
        params.require(:review).permit(:text, :rating, :user_id, :restaurant_id)
    end
end
