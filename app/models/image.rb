class Image < ApplicationRecord

  belongs_to :products
  # def product
  #   Product.find_by(id: product_id)
  # end
end
