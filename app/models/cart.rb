class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items

  def add_drink(drink)
    with_lock do
      item = cart_items.find_or_initialize_by(drink: drink) { |new_item| new_item.quantity = 0 }
      item.quantity = (item.quantity || 1) + 1
      #item.totprice = item.quantity * item.drink.price
      item.save!
    end
  end
end
