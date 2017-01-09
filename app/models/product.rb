class Product <ApplicationRecord
  has_many :cart_items
  validates :name, :description, :image_url, presence: true
  validates :stock, :price, greater_than_or_equal_to: 0

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