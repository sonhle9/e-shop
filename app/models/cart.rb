class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  def add_product(product_params, cart_id)

    current_item = cart_items.find_by(product_id: product_params[:product][:product_id])

    if current_item
      current_item.quantity += product_params[:product][:quantity].to_i
      current_item.save
    else
      new_item = CartItem.create(product_id: product_params[:product][:product_id], quantity: product_params[:product][:quantity], cart_id: cart_id)
    end
      new_item
  end
end