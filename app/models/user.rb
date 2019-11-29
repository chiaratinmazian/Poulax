class User < ApplicationRecord
  has_many :hens, dependent: :destroy
  has_many :reservations, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  # before_create :set_default_avatar

  # def set_default_avatar
  #   default_url = "https://topgear.com.my/sites/default/files/default_images/avatar-default.png"
  #   if self.photo.present?
  #     self.photo = default_url
  #   end
  # end
end
