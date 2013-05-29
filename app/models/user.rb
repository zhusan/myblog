class User < ActiveRecord::Base
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
  end
  
  private
  def create_password(p)
    salt = Array.new(10){rand(1024).to_s(36)}.join
    self.salt,self.hashed_password = salt,Digest::SHA256.hexdigest(p + salt)
  end
end
