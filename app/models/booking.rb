class Booking < ApplicationRecord
  enum status: { paid: 0, waiting: 1, cancle: 2 }
  has_many :buyers, inverse_of: :booking
  belongs_to :user
  belongs_to :tour
  accepts_nested_attributes_for :buyers
end
