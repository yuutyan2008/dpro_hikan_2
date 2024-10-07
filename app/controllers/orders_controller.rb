class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id).order(created_at: :desc)
  end

  def new
    @order = Order.new
    @order.ordered_lists.build
    @items = Item.all.order(:created_at)
  end

  def create
    ActiveRecord::Base.transaction do
      @order = current_user.orders.lock.find_by(id: params[:order_id])
    
      #if @order.nil?
        #@order = current_user.orders.build(order_params)
      @order.save
      #end

      # update_total_quantity メソッドは、注文された発注量を総量に反映するメソッドであり、Orderモデルに定義されています。
      @order.update_total_quantity
    end
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(ordered_lists_attributes: [:item_id, :quantity])
  end

end
