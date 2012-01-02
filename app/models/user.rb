class User < ActiveRecord::Base
  has_many :comments
  has_many :watcheds
  has_many :shows
end
