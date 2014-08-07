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

class Script < ActiveRecord::Base
  validates :user_id, :name, presence: true
  scope :id_is, -> (id) { where(id: id).first }

  belongs_to :user

  def self.search( keyword )
    if keyword
      Script.where( ['name LIKE ?', "%#{keyword}%"] )
    else
      Script.all
    end
  end
end
