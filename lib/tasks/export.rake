# encoding: utf-8
require 'csv'

namespace :export do
  
  desc ' Export place data to db/place_export.csv'
  task :place => :environment do
    Place.save_csv
  end
  
  desc ' Export school data to db/school.csv'
  task :school => :environment do
    School.save_csv
  end
  
  desc ' Export category data to db/category.csv'
  task :category => :environment do
    Category.save_csv
  end
  
  desc ' Export menu data to db/menu.csv'
  task :menu => :environment do
    Menu.save_csv
  end
  
end
