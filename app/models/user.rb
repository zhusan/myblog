class User < ActiveRecord::Base
  require 'net/ftp'
  # mount_uploader :avatar, ImageUploader
  attr_accessible  :login, :name, :salt,:password
  validate :login, :presence => true
  has_many :blogs
  def password
    @password
  end

  def password=(p)
    return unless p
    @password = p
    create_password(p)
  end

  class << self
    def auth_login(login,password)
      user = User.find_by_login(login)
      if user && Digest::SHA256.hexdigest(password + user.salt) == user.hashed_password
        return user
      end
      false
    end

    def back_mysql_database
      db_config = ActiveRecord::Base.configurations[Rails.env]
      database = db_config["database"]
      user = db_config["username"]
      password = db_config["password"]
      file_name = database + "_" + Time.now.strftime("%Y%m%d")+".sql"
      file_path = "backup/" + file_name
      %x{mysqldump -u#{user} -p#{password} #{database} > #{file_path}}
      Qiniu::RS.delete(Setting.qiniu.backup_backet,file_name)
      QiniuUpload.upload_sql_file(file_path,Setting.qiniu.backup_backet,file_name)
      # ftp_upload file_name
      %x{rm #{file_path}}
    end

    # def ftp_upload file_name
    #   begin
    #     ftp = Net::FTP.new
    #     ftp.connect('v0.ftp.upyun.com',21)
    #     ftp.login('san/mysql-backup','zs3199333')
    #     ftp.puttextfile(file_name)
    #     pp ftp
    #     ftp.close
    #   rescue Net::FTPPermError => e
    #     puts e.message
    #   end
    # end
  end

  private
  def create_password(p)
    salt = Array.new(10){rand(1024).to_s(36)}.join
    self.salt,self.hashed_password = salt,Digest::SHA256.hexdigest(p + salt)
  end
end
