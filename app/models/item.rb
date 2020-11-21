class Item < ApplicationRecord
  validates :name, presence: true
  validates :ordering_totals, presence: true
  has_many :orders, through: :line_items
end
