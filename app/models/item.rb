class Item < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 15 }
  validates :price, presence: true, :numericality => { greater_than: 0 }
  validates :image_url, presence: true
  has_many :cart_items
  has_many :item_orders
  has_many :carts, through: :cart_items, class_name: 'Item'
  has_many :orders, through: :item_orders, class_name: 'Item'



end
