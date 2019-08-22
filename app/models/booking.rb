class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :user, presence: true
  validates :car, presence: true
end

def start_time
  start_time
end

def end_time
  end_time
end
