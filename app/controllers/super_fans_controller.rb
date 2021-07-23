class SuperFansController < ApplicationController

    def index
        super_fans = SuperFan.all
        render json: super_fans, include: :song, except: [:song_id, :created_at, :updated_at]
    end

    def destroy
        super_fan = SuperFan.find(params[:id])
        if super_fan
            super_fan.destroy
            head :no_content, status: :ok
        else
            render json: {error: "SuperFan not found"}, status: :record_not_found
        end
    end


end
