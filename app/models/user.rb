class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart, dependent: :destroy
  has_many :orders

  after_create :create_cart

  def create_cart
    cart = Cart.create(user_id: self.id)
    UserMailer.welcome_email(self).deliver_now
  end
end
