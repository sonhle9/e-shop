class Product <ApplicationRecord
  has_many :cart_items

  validates :name, :description, presence: true
  validates_numericality_of :stock, :price, greater_than_or_equal_to: 0
  has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end