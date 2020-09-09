Rails.application.routes.draw do

  namespace :api do
    get "/all_products_path" => "products#all_products_action"
  end
end