class ArtworksController < ApplicationController
    # def index
    #     render json: Artwork.all
    # end

    def index
        render json: Artwork.owned_and_shared(params[:user_id])
    end

    def create
        artwork = Artwork.new(artwork_param)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: Artwork.find(params[:id])
    end

    def update
        artwork = Artwork.find(params[:id])
        if artwork.update(artwork_param)
            render json:artwork
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        render json: Artwork.find(params[:id]).destroy
    end

    private
    def artwork_param
        params.require(:artworks).permit(:title,:image_url,:artist_id)
    end
end