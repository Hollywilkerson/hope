class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  :database_authenticatable; :registerable
         :recoverable; :rememberable; :trackable; :validatable; :lockable
end
