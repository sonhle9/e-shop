class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  def add_product(product_params)
    current_item = CartItem.find_by(product_id: product_params[:product][:id])

    if current_item
      current_item.quantity += product_params[:product][:quantity].to_i
      current_item.save
    else
      new_item = CartItem.create(product_params[:product])
    end
      new_item
  end
end