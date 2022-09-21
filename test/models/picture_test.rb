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
require "test_helper"

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
