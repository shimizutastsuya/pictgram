class User < ApplicationRecord
  
  validates :name, presence: true, length: { maximum: 15}
  validates :email, presence: true,format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, format: { with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/ }, presence: true, length: { in: 8..32 }
 validates :password_confirmation, presence: true, length: { in: 8..32 }
  
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
