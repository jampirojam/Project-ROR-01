class User < ApplicationRecord
  # Add the has_secure_password method
  has_secure_password
  
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  # Remove the following validation
  
  
  def posts
    return Post.where(user_id: self.id)
  end
  
end
