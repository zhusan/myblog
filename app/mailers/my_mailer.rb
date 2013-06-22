class MyMailer < ActionMailer::Base
  def mailer 
    mail(
      :subject => 'hello',
      :to      => '690015301@qq.com',
      :from    => 'admin@zhusan.net'
    )
  end
end
