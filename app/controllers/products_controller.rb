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

  def edit
    @product = Product.find(params[:id])
    render "edit.html.erb"
  end

  def update
    product = Product.find(params[:id])
    product.update(
      supplier_id: params[:supplier_id],
      name: params[:name],
      description: params[:description],
      price: params[:price],
      quantity: params[:quantity]
    )
    
    image = Image.find_by(product_id: product.id)
    image.update(
      url: params[:image_url]
    )

    redirect_to "/products/#{product.id}"
  end

end
