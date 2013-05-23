class UserController < ApplicationController
  def login
  end

 def create
  user = User.auth_login(params[:login],params[:password])
  if user
    session[:user] = user.id
    flash[:notice] = "登录成功！"
    redirect_to :action => :index
  else
    flash[:notice] = "账号或密码错误！"
    redirect_to :action => :login
  end
 end 
end
