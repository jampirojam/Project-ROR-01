class User < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  # Validate that the password column is not empty
  validates :password, {presence: true}
end
