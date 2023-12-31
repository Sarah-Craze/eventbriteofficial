class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :attendances
         has_many :events, through: :attendances
       
         has_many :admin_events, class_name: 'Event', foreign_key: 'admin_id'
       

         def username
          "#{first_name} #{last_name}"
        end
end
