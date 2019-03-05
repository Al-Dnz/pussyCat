class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart, dependent: :destroy
  
  after_create :create_cart_for_this_user

  def create_cart_for_this_user
    cart = Cart.create(user_id: User.last.id)
  end
end
