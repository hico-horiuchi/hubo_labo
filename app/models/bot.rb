# == Schema Information
#
# Table name: bots
#
#  id          :integer          not null, primary key
#  user_id     :integer          default(0), not null
#  name        :string(255)      default(""), not null
#  github      :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Bot < ActiveRecord::Base
  validates :user_id, :name, presence: true
  scope :id_is, -> (id) { where(id: id).first }

  belongs_to :user
  delegate :name, to: :user, prefix: true

  def self.search( keyword )
    if keyword
      Bot.where( ['name LIKE ?', "%#{keyword}%"] )
    else
      Bot.all
    end
  end
end
