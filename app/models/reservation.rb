class Reservation < ApplicationRecord
  belongs_to :line_user

  validates :reserved_at, presence: true
end
