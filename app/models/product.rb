class Product < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :description, length: { in: 10..500 }
  validates :url, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :inventory, numericality: { greater_than: 0 }

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  belongs_to :supplier
  # def supplier
  #   Supplier.find(supplier_id)
  # end
  
  
  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
  
end
