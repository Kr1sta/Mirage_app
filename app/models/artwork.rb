class Artwork < ApplicationRecord
  belongs_to :artist
  mount_uploader :image, CarouselUploader
end
