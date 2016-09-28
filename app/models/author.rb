class Author < ActiveRecord::Base
  belongs_to :musical_genres
  has_many :musics
end
