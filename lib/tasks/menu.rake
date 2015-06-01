# encoding: utf-8

namespace :menu do

  desc 'parse menu data and add to tables'
  # public/menu_data
          # /place_name/
          #   info.txt (Name Area, Phone, )
          #   /munu_name(category)/
            #   /1.jpg
            #   /2.jpg
            #   /3.jpg
            #   /4.jpg
            #   /map.jpg
          # /place_name/
          #   info.txt (Name Area, Phone, )
          #   /munu_name(category)/
          #   info.txt (name, category)
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
  
  task :reduce_size => :environment do
    folder = "#{Rails.root}/public/menu_data"
    place_object  = nil
    current_place = ""
    current_menu  = ""
    Dir.glob("#{folder}/**/*") do |file|
      if file =~/\.tiff|\.jpg$/ 
        puts "file: #{File.basename(file)}"
        current_menu = File.basename(File.dirname(file))
        puts "Munu: #{current_menu}"
        menu_object = Munu.create(place_id: place_object.id, name: current_menu)
        Picture.create(menu_id: menu_object.id)
      elsif file =~/\.txt$/
        puts "txt file: #{file}"
        current_place = File.basename(File.dirname(file))
        puts "Place: #{current_place}"
        place_object = Place.create(name: current_place)
        
      end

    end
  end
end