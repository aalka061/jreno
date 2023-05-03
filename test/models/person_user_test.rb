# == Schema Information
#
# Table name: person_users
#
#  id         :bigint           not null, primary key
#  person_id  :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PersonUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
