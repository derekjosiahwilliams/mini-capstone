class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carted_products = current_user.carted_product
    if @carted_products.length > 0
      render "index.html.erb"
    else
      flash[:warning] = "No Dragon in cart! Buy stuff now!"
      redirect_to "/"
    end
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
