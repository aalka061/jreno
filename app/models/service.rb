# == Schema Information
#
# Table name: services
#
#  id             :bigint           not null, primary key
#  title          :string
#  main_image_url :string
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Service < ApplicationRecord

  has_many :works, dependent: :destroy

  def self.create_default_services
    services = [
      {
        title: "Kitchen Renovation",
        main_image_url: "https://i.ibb.co/TmvPSCg/kitchen-2165756-640.jpg",
        description: "We provide you with highly professional cabinet vendors, countertop manufacturers, plumbers, electricians and painters to give you the kitchen that you dream of ",
      },
      {
        title: "Bathroom Renovation",
        main_image_url: "https://i.ibb.co/xLpR3BV/service-2.jpg",
        description: "We provide you with solutions to remodel or freshen up your bathroom. Whether it is electrical, plumbing, tile setting or painting, we get the epxertise to get it done ",
      },
      {
        title: "Basement Renovation",
        main_image_url: "https://i.ibb.co/XJhTtZ8/service-6.jpg",
        description: "We provide you with proven and effective remodeling and finishing services installation of ceiling, trimmings, floorings, and the installation of air systems ",
      },
    ]

    Service.create(services)
  end
end
