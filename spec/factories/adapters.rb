# == Schema Information
#
# Table name: adapters
#
#  id           :integer          not null, primary key
#  user_id      :integer          default(0), not null
#  name         :string(255)      default(""), not null
#  github       :string(255)
#  description  :text
#  service_name :string(255)      default(""), not null
#  service_url  :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :adapter do
  end
end
