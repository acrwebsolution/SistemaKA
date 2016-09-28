class Table < ActiveRecord::Base
  belongs_to :locals
  belongs_to :clients
end
