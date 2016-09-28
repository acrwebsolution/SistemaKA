class MusicalGenre < ActiveRecord::Base
  has_many :authors
end
