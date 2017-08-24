class HomeImage < ApplicationRecord

  mount_uploader :image, CarouselUploader
end
