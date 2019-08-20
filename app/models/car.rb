class Car < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :title, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true
end
