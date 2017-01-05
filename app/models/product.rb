class Product <ApplicationRecord
  validates :name, :description, :price, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end