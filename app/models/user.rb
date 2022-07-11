class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :registerable, :validatable
end
