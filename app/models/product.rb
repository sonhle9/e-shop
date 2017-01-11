class Product <ApplicationRecord
  has_many :cart_items
  has_many :orders

  validates :name, :description, :image_url, presence: true
  validates_numericality_of :stock, :price, greater_than_or_equal_to: 0

  before_destroy :ensure_not_referenced_by_any_cart_item
  before_destroy :ensure_not_referenced_by_any_order

  def ensure_not_referenced_by_any_cart_item
    if cart_items.empty?
      return true
    else
      errors.add(:base, 'Cart Items present')
     return false
     end
  end

  def ensure_not_referenced_by_any_order
    if orders.empty?
      return true
    else
      errors.add(:base, 'Orders present')
     return false
     end
  end
end