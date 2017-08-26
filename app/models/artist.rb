class Artist < ApplicationRecord
  has_many :artwork
  mount_uploader :headshot, CarouselUploader
end
