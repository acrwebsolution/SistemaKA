class Client < ActiveRecord::Base
  has_many :musical_orders
  has_many :order_products
  has_many :bills
  belongs_to :reservations
  has_one :livingrooms
  belongs_to :tables
  
  
end
