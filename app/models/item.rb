class Item < ApplicationRecord
  validates :name, presence: true
  validates :ordering_totals, presence: true
end
