# encoding: utf-8
require 'csv'

namespace :import do
  
  desc ' Import place data from db/place.csv'
  task :place => :environment do
    path = File.join(Rails.root, "db/place.csv")
    count = 0
    CSV.foreach(path, headers: true) do |row|
      place = Place.create(name: row['name'], area: row['area'], address: row['address'], zip: row['zip'])
      puts "#{name}- #{place.errors.full_messages.join(",")}" if place.errors.any?
      count += 1 if place.persisted?
    end
    puts "Imported #{count} places"
  end
  
  desc ' Import school data from db/school.csv'
  task :school => :environment do
    path = File.join(Rails.root, "db/school.csv")
    count = 0
    CSV.foreach(path, headers: true) do |row|
      school = School.create(name: row['name'], area: row['area'], address: row['address'], zip: row['zip'])
      puts "#{name}- #{school.errors.full_messages.join(",")}" if school.errors.any?
      count += 1 if school.persisted?
    end
    puts "Imported #{count} schools"
  end
  
  desc ' Import category data from db/category.csv'
  task :category => :environment do
    path = File.join(Rails.root, "db/category.csv")
    count = 0
    CSV.foreach(path, headers: true) do |row|
      category = Category.create(name: row['name'])
      puts "#{name}- #{category.errors.full_messages.join(",")}" if category.errors.any?
      count += 1 if category.persisted?
    end
    puts "Imported #{count} categories"
  end
  
  
  desc ' Import menu data from db/menu.csv'
  task :menu => :environment do
    path = File.join(Rails.root, "db/menu.csv")
    count = 0
    CSV.foreach(path, headers: true) do |row|
      menu = Meny.create(name: row['name'], category: row['category'], place: row['place'])
      puts "#{name}- #{menu.errors.full_messages.join(",")}" if menu.errors.any?
      count += 1 if menu.persisted?
    end
    puts "Imported #{count} menus"
  end
  
end