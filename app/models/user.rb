class User < ApplicationRecord
# enum user_type: { visitor: 0, buyer: 1, seller: 2 }


  # Include default Devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end


