class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def create
        user = User.new(user_param)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        user = User.find(params[:id])
        render json:user
    end


    def update
        user = User.find(params[:id])
        if user.update(user_param)
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        render json: User.find(params[:id]).destroy
    end
    
    private
    def user_param
        params.require(:users).permit(:username,:email)
    end


end