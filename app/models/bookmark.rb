class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: {scope: :list, message: "is already in the list"}
  vaidates :comment, length: {minimum: 6}

end
