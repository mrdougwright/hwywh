class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, 
                  :remember_me, :name, :phone, :message, :time,
                  :frequency
  # attr_accessible :title, :body
  
  # dirty implementation for admin access:
  def admin?(user)
    if user.email == 'mrdougwright@gmail.com' or user.email == 'janekim9321@gmail.com'
      return true
    else
      return false
    end
  end
end
