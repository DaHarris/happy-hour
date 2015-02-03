class User < ActiveRecord::Base

  def self.authenticate(name, password)
    user = find_by(user_name: name)
    if user && user.user_password == BCrypt::Engine.hash_secret(password, user.salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if user_password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.user_password= BCrypt::Engine.hash_secret(user_password, salt)
    end
  end

  def clear_password
    user_password = nil
  end
end
