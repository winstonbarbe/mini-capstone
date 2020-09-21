class Api::ProductsController < ApplicationController

  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name iLike ?", "%#{params[:search]}%")
    end
    
    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      else
        @products = @products.order(:price)
      end
    else
      @products = @products.order(:id)
    end

    render "index.json.jb"

  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        inventory: params[:inventory],
        supplier: params[:supplier]

    )
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
    
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.inventory = params[:inventory] || @product.inventory
    @product.supplier = params[:supplier] || @product.supplier
    
    if @product.save
      render "show.json.jb"  
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end

  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "This product has been deleted."}
  end

end
