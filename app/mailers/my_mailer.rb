class MyMailer < ActionMailer::Base
  def mailer e,d
    @d = d + e
    mail(
      :subject => 'hello',
      :to      => '690015301@qq.com',
      :from    => 'zhusan333@163.com'
    )
  end

  def send_error_mail msg
    
  end

end
