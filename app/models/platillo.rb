class Platillo < ActiveRecord::Base
   
      mount_uploader :image, ImageUploader
end
