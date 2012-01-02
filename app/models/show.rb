class Show < ActiveRecord::Base
  has_many :seasons
  has_many :episodes, :through => :seasons
  has_many :users
end
