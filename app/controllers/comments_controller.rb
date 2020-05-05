class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments.to_json(comment_serializer)
    end

    def show
      comment = Comment.find(params[:id])
      render json: comment.to_json(comment_serializer)
    end

    def create
        comment = Comment.create(comment_params)
        comment.save
        render json: comment.to_json(comment_serializer)
    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      comments = Comments.all
      render json: comments.to_json(comment_serializer)
  end

      private

      def comment_params
        params.require(:comments).permit(:user_id, :bar_id, :comment)
      end
      
      def comment_serializer
       { :only => [:id, :comment, :user_id, :bar_id], 
        :include => {:user => {:only => [:id, :username, :image]}}}
      end

end
