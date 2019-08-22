class Car < ApplicationRecord
  include PgSearch::Model
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

  pg_search_scope :search_by_title_and_model,
    against: [:title, :model],
    using: {
      tsearch: { prefix: true }
    }

  def average_rating
    return nil if reviews.empty?
    total_rating = 0
    reviews.each do |review|
      total_rating += review.rating
    end
    average_rating = total_rating.to_f / reviews.count
    average_rating.round(2)
  end
end
