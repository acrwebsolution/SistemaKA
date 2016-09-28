class BillDetail < ActiveRecord::Base
  has_and_belongs_to_many :order_products
  belongs_to :bills
end
