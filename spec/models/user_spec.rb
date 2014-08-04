# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string(255)      default(""), not null
#  admin_flag         :boolean          default(FALSE), not null
#  email              :string(255)      default(""), not null
#  encrypted_password :string(255)      default(""), not null
#  created_at         :datetime
#  updated_at         :datetime
#

require 'rails_helper'

RSpec.describe User, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
