class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def show
    dragons_id = params[:id]
    @products = Product.find_by(id: dragons_id)
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    product = Product.new(name: params[:form_name], price: params[:form_price], element: params[:form_element], description: params[:form_description], image: params[:form_image])
    product.save
    flash[:success] = "A Dragon has been born!"
    redirect_to "/dragons/#{product.id}"
  end

  def edit
    dragons_id = params[:id]
    @product = Product.find_by(id: dragons_id)
    render "edit.html.erb"
  end

  def update
    dragons_id = params[:id]
    @product = Product.find_by(id: dragons_id)
    @product.name = params[:form_name]
    @product.price = params[:form_price]
    @product.element = params[:form_element]
    @product.description = params[:form_description]
    @product.save
    flash[:success] = "Dragon Improved!"
    redirect_to "/dragons"
  end

  def destory
    dragons_id = params[:id]
    @product = Product.find_by(id: dragons_id)
    @product.destroy
    render "destory.html.erb"
  end

end