class UserController < ApplicationController
  def login
    return unless request.post?
    user = User.auth_login(params[:login],params[:password])
    if user
      session[:user] = user.id
      flash[:notice] = "登录成功！"
      redirect_to admin_blog_index_path
    else
      flash[:error] = "账号或密码错误！"
      redirect_to :action => :login
    end
  end

  def logout
    session[:user] = nil
    redirect_to blog_index_path
  end
end
