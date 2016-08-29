require 'bcrypt'

class User < ActiveRecord::Base
  # include BCrypt

  validates :username, :presence => true,
                       :uniqueness => true
  validates :password_hash, :presence => true

  has_many :attendances
  has_many :events, through: :attendances

  def password
		@password ||= BCrypt::Password.new(password_hash)
	end

  def password=(new_password)
    @raw_password = new_password
  	@password = BCrypt::Password.create(new_password)
  	self.password_hash = @password
  end

  def self.authenticate(username, pass)
  	user_login = User.find_by(username: username) #returns user
  	if user_login && user_login.password == pass
  		return user_login
  	end
	  nil
  end
end
