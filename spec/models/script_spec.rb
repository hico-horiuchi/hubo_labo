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

require 'rails_helper'

RSpec.describe Script, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
