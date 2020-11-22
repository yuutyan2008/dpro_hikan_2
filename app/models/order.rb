class Order < ApplicationRecord
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items
  accepts_nested_attributes_for :line_items

  def update_total_quantity
    self.line_items.each do |line_item|
      item = Item.find_by(id: line_item.item_id)
      item.total_quantity += line_item.quantity
      item.save
    end
  end
end
