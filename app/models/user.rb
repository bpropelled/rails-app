class User < ApplicationRecord
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    
    before_save {self.email = email.downcase}
    #or
   # before_save {self.email = self.email.downcase}
    
    validates(:name, presence: true, length: {minimum: 3, maximum: 50})
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    #or this is the same syntax
    #validates :name, presence: true
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
