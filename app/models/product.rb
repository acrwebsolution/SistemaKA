class Product < ActiveRecord::Base
  has_and_belongs_to_many :order_products
  belongs_to :product_types
end
