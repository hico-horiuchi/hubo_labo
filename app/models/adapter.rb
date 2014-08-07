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

class Adapter < ActiveRecord::Base
  validates :user_id, :name, :service_name, presence: true
  scope :id_is, -> (id) { where(id: id).first }

  belongs_to :user

  def self.search( keyword )
    if keyword
      Adapter.where( ['name LIKE ?', "%#{keyword}%"] )
    else
      Adapter.all
    end
  end
end
