class Item < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 15 }
  validates :price, presence: true, :numericality => { greater_than: 0 }
  validates :image_url, presence: true
end
