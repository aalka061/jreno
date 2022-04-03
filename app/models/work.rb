class Work < ApplicationRecord
 belongs_to :service

 validates_presence_of :main_image_url

 def images
   images = []
   if main_image_url.present?
     images << main_image_url
   end

   if self.image_1_url.present?
     images << image_1_url
   end

   if self.image_2_url.present?
     images << image_2_url
   end

   if self.image_3_url.present?
     images << image_3_url
   end

   if self.image_4_url.present?
     images << image_4_url
   end

   if self.image_5_url.present?
     images << image_5_url
   end

   images
 end
end
