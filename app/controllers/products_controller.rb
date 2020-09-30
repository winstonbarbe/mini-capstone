class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id],
      quantity: params[:quantity],
    )
    product.save
    image = Image.new(
      url: params[:images],
      product_id: product.id
    )
    image.save
    redirect_to "/products/#{product.id}"
  end

  def show
    @product = Product.find(params[:id])
    render "show.html.erb"
  end
end
