class Product < ApplicationRecord

  mount_uploader :product_image, ImageUploader
end
