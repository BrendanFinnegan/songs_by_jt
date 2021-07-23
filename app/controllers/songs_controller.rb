class SongsController < ApplicationController

    def index
        songs = Song.all
        render json: songs
    end

    # def show
    #     song = Song.find(params[:id])
    #     render json: song, include: :reviews, except: [:created_at, :updated_at]
    # end
end
