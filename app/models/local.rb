class Local < ActiveRecord::Base
  has_many :reservartions
  has_many :livingrooms
  has_many :tables
end
