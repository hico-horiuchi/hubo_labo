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

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable, :trackable
  devise :database_authenticatable, :registerable, :validatable
  validates :name, presence: true
  scope :id_is, -> (id) { where(id: id).first }

  def admin?
    admin_flag
  end
end
