class CommentController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    if @comment.valid?
      @comment.save!
      redirect_to  blog_path(@comment.blog)
    else
      @blog = Blog.find_by_id(params[:comment][:blog_id])
      @comments = @blog.comments
      render :template => "/blog/show"
    end
  end
end
