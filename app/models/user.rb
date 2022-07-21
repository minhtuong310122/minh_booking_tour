class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :registerable, :validatable
  enum role: { user: 0, admin: 1 }
  validates :name, presence: true

  def liked? tour
    like = Like.find_by tour_id: tour.id, user_id: self.id
    like.present?
  end
end
