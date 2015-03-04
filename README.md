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
