class Api::ProductsController < ApplicationController

  def all_products_action
    @records = Product.all
    render "all_products.json.jb"
  end
end
