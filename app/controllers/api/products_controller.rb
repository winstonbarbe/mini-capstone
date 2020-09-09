class Api::ProductsController < ApplicationController

  def all_products_action
    @records = Product.all
    render "all_products.json.jb"
  end

  def single_product_action
    @record = Product.first
    render "single_product.json.jb"
  end
end
