class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments,  except: [:created_at, :updated_at]
    end

    def show
      comment = Comment.find(params[:id])
      render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        comment.save
        render json: comment
    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
      comments = Comments.all
      render json: comments
  end

      private

      def comment_params
        params.require(:comments).permit(:user_id, :bar_id, :comment)
      end

end
