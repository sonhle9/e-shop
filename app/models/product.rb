class Product <ApplicationRecord
  has_many :cart_items
  validates :name, :description, :price, :stock, presence: true
  before_destroy :ensure_not_referenced_by_any_cart_item

  def ensure_not_referenced_by_any_cart_item
    if cart_items.empty?
      return true
    else
      errors.add(:base, 'Cart Items present')
     return false
     end
  end
end