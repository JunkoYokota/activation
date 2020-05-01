class Tweet < ApplicationRecord
  mount_uploader :img, ImgUploader
  has_many_attached :imgs
  belongs_to :user
  
end
