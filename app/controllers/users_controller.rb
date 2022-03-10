class UsersController < ApplicationController
    def index
        if params.has_key?(:username)
            user = User.where(username: params[:username])
        elsif params.has_key?(:email)
            user = User.where(email: params[:email])
        else
            user = User.all
        end
        debugger
        render json: user
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