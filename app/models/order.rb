class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :cart_item
end