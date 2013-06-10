class BlogController < ApplicationController
  def index
    conn,tables = Blog.get_conn(params)
    @blogs = Blog.where(conn).includes(tables).order("blogs.id desc").paginate(:page => params[:page], :per_page => 5)
    @blogs_file = Blog.select("created_at").order("created_at desc").group_by{|c| full_ym(c.created_at)}
  end

  def show
    @blog = Blog.find_by_id(params[:id])
    unless @blog
      flash[:notice] = "没有该文章!"
      redirect_to :action => :index
    else
      @comments = @blog.comments
      @comment = Comment.new(:blog_id => @blog.id)
    end
  end

end
