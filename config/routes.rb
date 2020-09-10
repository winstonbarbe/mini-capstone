Rails.application.routes.draw do

  namespace :api do
    get "/all_products_path" => "products#all_products_action"
    get "/single_product_path" => "products#single_product_action"
    get "/last_product_path" => "products#last_product_action"
  end
end