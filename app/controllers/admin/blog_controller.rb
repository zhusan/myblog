class Admin::BlogController < Admin::BaseController

  def index
    @blogs = Blog.paginate(:page => params[:page], :per_page => 15)
    if params[:page].to_i > @blogs.total_pages.to_i
      redirect_to admin_blog_index_path(:page => @blogs.total_pages)
    end
  end

  def new
  end

  def create
    @blog = Blog.new({:user_id => session[:user],:title => params[:title], :content => params[:content1.to_s]})
    if @blog.valid? && @blog.save!
      flash[:notice] = "文件新建成功！"
      redirect_to  admin_blog_index_path
    else
      render new_admin_blog_path
    end
  end

  def edit
    @blog = Blog.find_by_id(params[:id])
  end

  def update
    @blog = Blog.find_by_id(params[:id])
    @blog.attributes = {:title => params[:title], :content => params[:content1]}
    if @blog.valid? && @blog.save!
      redirect_to admin_blog_path(@blog)
    else
    render :action => :edit
    end
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
    redirect_to admin_blog_index_path(:page => params[:page])
  end
end
