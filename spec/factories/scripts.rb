# == Schema Information
#
# Table name: scripts
#
#  id          :integer          not null, primary key
#  user_id     :integer          default(0), not null
#  name        :string(255)      default(""), not null
#  github      :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :script do
  end
end
