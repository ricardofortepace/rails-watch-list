class List < ApplicationRecord

  has_many :bookmarks, dependet: :destroy
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true
  validates :name, presence: true

end
