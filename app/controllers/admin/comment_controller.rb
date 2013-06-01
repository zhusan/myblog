class Admin::CommentController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    render :update do |page|
      if @comment.save!
        page << "console.log('111')"
      else
        page << "console.log('222')"
      end
    end
  end
end
