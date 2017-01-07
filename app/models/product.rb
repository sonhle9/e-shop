class Product <ApplicationRecord
  has_many :cart_items
  belongs_to :cart
  validates :name, :description, :price, :stock, presence: true
end