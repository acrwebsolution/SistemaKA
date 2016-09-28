class Bill < ActiveRecord::Base
  has_many :bill_details
  belongs_to :clients
end
