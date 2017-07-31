class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    sort_attribute = params[:sort_by]
    if sort_attribute
      @products = Product.all.order(sort_attribute)
    else 
      @products = Product.all
    end
    # if 
    #   @products = Product.all.order(:price => :desc)
    # else
    #   @products = Product.all
    # if
    #   @products = Product.all.where(price < ?, 340000)
    # end
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
    unless current_user && current_user.admin
      redirect_to "/"
      return
    end
    product = Product.new(name: params[:form_name], price: params[:form_price], element: params[:form_element], description: params[:form_description])
    # if params[:form_image]
    #   Image.create(url: params[:form_image])
    # end
    product.save
    flash[:success] = "A Dragon has been born!"
    redirect_to "/dragons/#{product.id}"
  end

  def edit
    dragons_id = params[:id]
    @product = Product.find_by(id: dragons_id)
    @product.save
    render "edit.html.erb"
  end

  def update
    dragons_id = params[:id]
    @product = Product.find_by(id: dragons_id)
    @product.name = params[:form_name]
    @product.price = params[:form_price]
    @product.element = params[:form_element]
    @product.description = params[:form_description]
    @product.image = params[:form_image]
    @product.save
    flash[:success] = "Dragon Improved!"
    redirect_to "/dragons"
  end

  def destory
    dragons_id = params[:id]
    @product = Product.find_by(id: dragons_id)
    @product.destroy
    flash[:success] = "Dragon Deported to Sky-Care!"
    redirect_to "/dragons"
  end

  def search
    search = params[:search_term]
    @products = Product.all.where("name ILIKE ?", "%" + search + "%")
    render "index.html.erb"
  end
end