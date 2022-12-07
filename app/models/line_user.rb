class LineUser < ApplicationRecord
  self.primary_key = :id

  has_many :reservations

  validates :id, uniqueness: true
end
