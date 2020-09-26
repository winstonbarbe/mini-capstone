class Product < ApplicationRecord

  # validates :name, uniqueness: true, presence: true
  # validates :description, length: { in: 10..500 }
  # validates :price, numericality: { greater_than: 0 }
  # validates :quantity, numericality: { greater_than: 0 }

  # association method (instance method)
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  # class method
  scope :title_search, -> (search_term) { where("name iLIKE ?", "%#{search_term}%") }
  scope :discounted, ->(check_discount) { where("price < ?", 10) if check_discount }
  scope :sorted, ->(sort, sort_order) {
    if sort == "price" && sort_order == "asc"
      order(price: :asc)
    elsif sort == "price" && sort_order == "desc"
      order(price: :desc)
    else
      order(id: :asc)
    end
  }

  # instance method/model method
  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end