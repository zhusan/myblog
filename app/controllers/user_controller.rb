class UserController < ApplicationController
  def login
    puts request.post?,"111111111111111111111111111111"
    
    return unless request.post?
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
