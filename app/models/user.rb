class User < ActiveRecord::Base
  has_secure_password

  has_many :articles
  has_many :categories, through: :articles
end
