class Item < ApplicationRecord
  validates :name, presence: true
  validates :total_quantity, presence: true
  has_many :orders, through: :line_items
end
