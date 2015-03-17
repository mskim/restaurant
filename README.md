# Restaurant Guide

Rails App for Restaurant Guide near school

## Tables
## User
	- name
	- school
	- devise items(email, password)
	
## school
	- name
	- address
	
## category
	- category

## menu
	- name
	- category
	- place
	
	** has_many pictures
	** has_many likes
	
## picture
	menu_id:integer
	file_name
	**  belongs_to :menu

## likes
	- user:integer
	- menu:integer
	
	**  belongs_to :menu
	**  belongs_to :user
	
## comment
	- comment:text
	- menu_id:integer
	- user_id:integer

	belongs_to :menu
	belongs_to :user
	
## place
	province
	city
	borught
	address

## TODO
2015 3 17
1. Add Place Table 
	name, area, address, zip
1. CSV import export
1. Reduce Image Size
1. Navigation Bar with Images
1. Carousel 
1. Selection with popup(category, school, place) 

2015 3 16
1. Reduce Staff Image Size
1. create seed
1. Put Design Image
1. Navigation
1. Deploy on Server
