# == Schema Information
#
# Table name: addresses
#
#  id             :bigint           not null, primary key
#  street_address :string
#  city           :string
#  state          :string
#  zip_code       :string
#  country        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
