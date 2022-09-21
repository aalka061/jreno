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
require "test_helper"

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
