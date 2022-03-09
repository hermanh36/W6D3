class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create
        user = User.new(params.require(:user).permit(user_attribute_here))
        user.save!
        render json: user
    end

    def show
        render json:params
    end
end