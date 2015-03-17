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

class Place < ActiveRecord::Base
  has_many :menus
  
  
  def self.save_csv
    require 'csv'
    attributes =  Place.first.attributes
    attributes.delete("id")
    attributes.delete("created_at")
    attributes.delete("updated_at")
    path = File.join(Rails.root, "db/place_export.csv")
    CSV.open(path, "wb") do |csv|
      csv << attributes.keys
      Place.all.each do |place|
        csv << place.attributes.values_at(*attributes.keys)
      end
    end    
  end
end
