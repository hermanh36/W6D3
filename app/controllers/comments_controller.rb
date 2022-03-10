class CommentsController < ApplicationController
    def index
        if params.has_key?(:artwork_id)
            comment = Comment.where(artwork_id: params[:artwork_id])
        elsif params.has_key?(:user_id)
            comment = Comment.where(user_id: params[:user_id])
        else
            comment = Comment.all
        end
        render json: comment
    end

    def create
        comments = Comment.new(comment_params)
        if comments.save
            render json: comments
        else
            render json: comment.errors.full_messages, status: :unprocessable_entity
        end
    end

    def delete
        Comment.find(params[:id]).destroy
    end

    def comment_params
        params.require(:comments).permit(:artwork_id,:user_id,:body)
    end
end