# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :string
#  area       :string
#  address    :string
#  zip        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
