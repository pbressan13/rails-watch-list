class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }, allow_blank: false
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end
