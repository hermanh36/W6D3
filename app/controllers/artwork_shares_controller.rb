class ArtworkSharesController < ApplicationController
    def create
        share = ArtworkShare.new(shared_params)
        if share.save
            render json: share
        else
            render json: share.errors.full_messages, status: :unprocessable_entity
        end
    end

    def index
        render json: ArtworkShare.all
    end

    def destroy
        render json: ArtworkShare.find(params[:id]).destroy
    end



    private
    def shared_params 
        params.require(:artwork_shares).permit(:artwork_id,:viewer_id)
    end

end