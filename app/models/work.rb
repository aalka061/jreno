# == Schema Information
#
# Table name: works
#
#  id             :bigint           not null, primary key
#  title          :string
#  main_image_url :string
#  image_1_url    :string
#  image_2_url    :string
#  image_3_url    :string
#  image_4_url    :string
#  image_5_url    :string
#  image_6_url    :string
#  description    :text
#  service_id     :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Work < ApplicationRecord
 belongs_to :service

 validates_presence_of :main_image_url
 validates_presence_of :title
 validates_presence_of :description

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
