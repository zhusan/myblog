class Admin::BlogController < Admin::BaseController

  def index
    @blogs = Blog.all
  end

  def new
  end

  def create
    blog = Blog.new({:title => params[:title], :content => params[:content1.to_s]})
    blog.save!
    redirect_to  :action => :index
  end

  def edit
    @blog = Blog.find_by_id(params[:id])
  end

  def show
    @blog = Blog.find_by_id(params[:id])
  end

  def destroy
    blog = Blog.find_by_id(params[:id])
    if blog
      blog.destroy
      flash[:notice] = "文章删除成功！"
    else
      flash[:notice] = "没有该文章！"
    end
    redirect_to admin_blog_index_path
  end
end
