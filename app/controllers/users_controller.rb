class UsersController < ApplicationController
    def index
        render plain: "This is the"
    end

    def create
        render json:params
    end

    def show
        render json:params
    end
end