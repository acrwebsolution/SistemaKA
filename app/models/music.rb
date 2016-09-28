class Music < ActiveRecord::Base
  belongs_to :authors
  has_and_belongs_to_many :musical_orders
end
