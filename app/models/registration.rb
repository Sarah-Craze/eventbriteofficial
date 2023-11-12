class Registration < ApplicationRecord
    has_secure_password

    # Add any additional validations or associations here
  
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
  
    # Add any other validations or methods you need
end
