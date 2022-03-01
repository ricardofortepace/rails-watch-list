class Movie < ApplicationRecord

  has_many :bookmarks

  validates :title, :overview, :poster_url, :rating, presence: true
  validates :title, :overview, uniqueness: true

end
