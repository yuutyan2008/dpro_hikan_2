class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id).order(created_at: :desc)
  end

  def new
    @order = Order.new
    @order.line_items.build
  end

  def create
    @order = current_user.orders.build(order_params)
    @order.save
    @order.line_items.each do |line_item|
      item = Item.find_by(id: line_item.item_id)
      item.ordering_totals += line_item.quantity
      item.save
    end
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(line_items_attributes: [:item_id, :quantity])
  end

end
