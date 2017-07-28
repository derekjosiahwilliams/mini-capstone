class OrdersController < ApplicationController
  def create
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

    order = Order.new(
      user_id: current_user.id,
    )
    CartedProduct.calculate_subtotal_tax_and_total
    order.save
    flash[:success] = "A Dragon Has Joined The Family!"
    redirect_to "/orders/#{order.id}"

    @carted_products.each do |carted_product|
      carted_product.status = "Purchased"
    end
  end

  def show
    dragons_id = params[:id]
    @order = Order.find_by(id: dragons_id)
    render "show.html.erb"
  end
end
