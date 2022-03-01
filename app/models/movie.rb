class Movie < ApplicationRecord

  has_many :bookmarks

  validates :title, :overview, :poster_url, :rating, presence: ture
  validates :title, :overview, uniqueness: true

end
