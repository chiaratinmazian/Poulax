class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :hen

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user, uniqueness: { scope: :hen }
end
