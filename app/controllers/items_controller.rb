class ItemsController < ApplicationController
  before_action :admin_required, only: [:index]

  def index
    @items = Item.all
  end

  private

  def admin_required
    redirect_to current_user unless current_user.admin?
  end
end
