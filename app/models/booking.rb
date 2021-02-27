class Booking < ApplicationRecord
  belongs_to :fan, :user
  validates :start_date, :end_date, presence: true
end
