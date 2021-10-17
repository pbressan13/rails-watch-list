class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, length: { minimum: 6 }, allow_blank: false
  has_many :bookmarks
end
