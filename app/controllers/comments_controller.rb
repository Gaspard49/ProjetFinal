# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :find_commentable

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new comment_params
    @comment.author = current_user.id

    if @comment.save
      redirect_back(fallback_location: @item_path)
    else
      redirect_back(fallback_location: @item_path)
    end
  end

    private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Item.find_by_id(params[:item_id]) if params[:item_id]
  end
  
end
