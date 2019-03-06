class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart, dependent: :destroy
  has_many :orders
  has_one_attached :avatar

  after_create :create_cart

  def create_cart
    cart = Cart.create(user_id: self.id)
    if cart.id == nil
      errors.add(:create_cart, "oh oh something wrong")
    end
  end

end
