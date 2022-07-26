class Buyer < ApplicationRecord
  belongs_to :booking, inverse_of: :buyers
end
