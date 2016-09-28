class OrderProduct < ActiveRecord::Base
  belongs_to :clients
  has_and_belongs_to_many :products
  has_and_belongs_to_many :bill_details
end
