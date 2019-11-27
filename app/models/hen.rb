class Hen < ApplicationRecord
  belongs_to :user
  has_many :reservations
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  # validates :photo, presence: true
  validates :city, presence: true
end
