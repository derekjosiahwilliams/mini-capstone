class CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.all
    # @carted_product = CartedProduct.first
    render "index.html.erb"
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:form_product_id],
      quantity: params[:form_quantity],
      status: "carted"
    )
    carted_product.save
    flash[:success] = "A Dragon Has Joined The Family!"
    redirect_to "/carted_products"
  end

  def show
    dragons_id = params[:id]
    @carted_product = carted_product.find_by(id: dragons_id)
    render "index.html.erb"
  end

end
