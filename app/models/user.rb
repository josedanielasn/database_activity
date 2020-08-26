class User < ApplicationRecord
  has_many :articles
  validates :email, length: {minimum:3, maximum:20}, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "Follow regular email format"}, uniqueness: true
  validates :username, length: {minimum:1, maximum:20}, presence: true, uniqueness: true
  validates :password, :confirmation => true, length: {minimum:8, maximum:15}
  has_secure_password
end


