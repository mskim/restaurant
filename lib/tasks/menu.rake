# encoding: utf-8

namespace :menu do

  desc 'parse menu data and add to tables'
  # public/menu_data
          # /place_name/
          #   place_info.txt (Name Area, Phone, )
          #   /munu_name/
            #   menu_info.txt (name, category)
            #   /1.jpg
            #   /2.jpg
            #   /3.jpg
            #   /4.jpg
            #   /map.jpg
          # /place_name/
          #   place_info.txt (Name Area, Phone, )
          #   /munu_name/
          #   menu_info.txt (name, category)
            #   /1.jpg
            #   /2.jpg
            #   /3.jpg
            #   /4.jpg
            #   /map.jpg
  
  task :parse => :environment do
    folder = "#{Rails.root}/public/menu_data"
    Dir.glob("#{folder}/*") do |place|
      puts place
      name = File.basename(place)
      puts "name:#{name}"
    end
    
  end

end