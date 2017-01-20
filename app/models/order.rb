class Order < ApplicationRecord
  has_many  :order_items
  #validates :delivery_address, :delivery_type, :payment_type, presence: true

  DELIVERY_TYPES = ["Courier(DPD)", "Personal collection", "InPost"]
  PAYMENT_TYPES  = ["Cash On Delivery", "Bank Transfer", "Dotpay"]

  def add_cart_items_from_cart(cart)
    cart.cart_items.each do |item|
      
    end
  end
end