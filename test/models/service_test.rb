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
require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
