# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  name       :string
#  category   :string
#  place_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
