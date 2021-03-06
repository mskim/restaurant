# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string
#  area       :string
#  address    :string
#  zip        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class School < ActiveRecord::Base
    
  def self.save_csv
    require 'csv'
    attributes =  School.first.attributes
    attributes.delete("id")
    attributes.delete("created_at")
    attributes.delete("updated_at")
    path = File.join(Rails.root, "db/school_export.csv")
    CSV.open(path, "wb") do |csv|
      csv << attributes.keys
      School.all.each do |school|
        csv << school.attributes.values_at(*attributes.keys)
      end
    end    
  end
end
