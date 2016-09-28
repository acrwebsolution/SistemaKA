class MusicalOrder < ActiveRecord::Base
  has_and_belongs_to_many :musics
  belongs_to :clients
end
