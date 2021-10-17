class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }, allow_blank: false
  belongs_to :movie
  belongs_to :list
  validates_uniqueness_of :movie, scope: :list
end
