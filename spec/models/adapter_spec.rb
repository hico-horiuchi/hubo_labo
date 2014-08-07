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

require 'rails_helper'

RSpec.describe Adapter, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
