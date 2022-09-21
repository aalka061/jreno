# == Schema Information
#
# Table name: pictures
#
#  id           :bigint           not null, primary key
#  title        :string
#  description  :text
#  url          :string
#  project_type :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Picture < ApplicationRecord
  enum project_type: {
    buildings: 0,
    kitchens: 1,
    bathrooms: 2,
    basements: 3,
    interiors: 4,
    exteriors: 5
  }

  has_one_attached :main_image

  scope :filter_by_type, ->(type) { 
    where(project_type: type) }

end
