# == Schema Information
#
# Table name: clients
#
#  id         :bigint           not null, primary key
#  type       :string
#  person_id  :bigint           not null
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
