class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :registerable, :validatable
  enum role: { user: 0, admin: 1 }
  validates :name, presence: true
end
