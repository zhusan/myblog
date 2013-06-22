class UserController < ApplicationController
  require 'jwt.rb'
  def login
    return unless request.post?
    user = User.auth_login(params[:login],params[:password])
    if user
      set_session_cookie user
      flash[:notice] = "登录成功！"
      redirect_to admin_blog_index_path
    else
      flash[:error] = "账号或密码错误！"
      redirect_to :action => :login
    end
  end

  def about

  end

  def logout
    session[:user] = nil
    cookies[:duoshuo_token] = nil 
    redirect_to blog_index_path
  end

  private
  def set_session_cookie user
    session[:user] = user.id
    #设置多说账户cookies
    token = {"short_name"=>"zhusan", "user_key"=>user.id, "name"=>"朱三"}
    duoshuo_token = JWT.encode(token, "59611feb6e9f74545c4e2f4a50c374a4")
    cookies[:duoshuo_token] = duoshuo_token

  end
end
