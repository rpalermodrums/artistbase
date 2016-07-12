class Fan < ApplicationRecord
  has_many :artist_fans
  has_many :artists, through: :artist_fans
  has_many :carts
end
