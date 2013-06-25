class BlogController < ApplicationController
  #
  def index
    params[:page] = 1 if params[:page].to_i == 0
    @blogs,@blogs_file = Blog.get_datas(params)
  end

  def show
    @blog = Blog.find_by_id(params[:id])
    unless @blog
      flash[:notice] = "没有该文章!"
      redirect_to :action => :index
      # else
      #   @comments = @blog.comments
      #   @comment = Comment.new(:blog_id => @blog.id)
    end
  end

end
