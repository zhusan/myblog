class BlogController < ApplicationController
  def index
    @blogs = Blog.order("id desc").paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @blog = Blog.find_by_id(params[:id])
    unless @blog
      flash[:notice] = "没有该文章!"
      redirect_to :action => :index
    end
    @comments = @blog.comments
    @comment = Comment.new(:blog_id => @blog.id)
  end

end
