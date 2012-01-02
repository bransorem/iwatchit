class Episode < ActiveRecord::Base
  has_many :comments
  belongs_to :season
  has_many :watcheds
end
