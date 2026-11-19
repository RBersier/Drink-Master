class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :drink

  def total
    quantity * drink.price
  end
end
