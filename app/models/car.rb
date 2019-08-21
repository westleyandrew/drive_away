class Car < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews
  validates :title, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
