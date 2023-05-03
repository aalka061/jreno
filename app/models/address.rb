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
class Address < ApplicationRecord
end
