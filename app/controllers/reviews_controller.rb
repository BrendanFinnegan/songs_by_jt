class ReviewsController < ApplicationController

    def create
        review = Review.create(review_params)
        if review.valid? 
            song = Song.find
    end


    private

    def review_params
        params.permit(:song_id, :super_fan_id, :rating, :comment)
    end
end
