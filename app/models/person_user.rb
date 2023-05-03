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
class PersonUser < ApplicationRecord
  belongs_to :person
  belongs_to :user

  accepts_nested_attributes_for :person
end
