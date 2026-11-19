class Drink < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  validates :price, :name, :volume, :barcode, presence: true
  validates :price, numericality: {greater_than: 0}

end
