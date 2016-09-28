class Reservation < ActiveRecord::Base
  belongs_to :clients
  belongs_to :locals
end
