# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  picture    :string
#  menu_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Picture < ActiveRecord::Base
  belongs_to :menu
  mount_uploader :picture, PictureUploader
end

