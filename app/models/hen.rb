class Hen < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  # validates :photo, presence: true
  validates :address, presence: true
end
