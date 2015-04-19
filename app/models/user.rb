class User < ActiveRecord::Base

  attr_reader :password 

  def password=(unencrypted_password)    #setter method, when someone gives us a password
     unless unencrypted_password.empty? #only set the password digest if the password is not empty 
      @password= unencrypted_password
      self.password_digest = BCrypt::Password.create(unencrypted_password)    
  end #encrypts password
end

  def authenticate(unencrypted_password)
      if BCrypt::Password.new(self.password_digest ) == unencrypted_password    
        return self
      else
        return false
      end
  end #takes encypted bcrypt object and compares it against a string


end
