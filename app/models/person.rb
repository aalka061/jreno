# == Schema Information
#
# Table name: people
#
#  id           :bigint           not null, primary key
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Person < ApplicationRecord
  has_one :client
  has_one :person_user
  has_one :user, through: :person_user

  accepts_nested_attributes_for :client
end
