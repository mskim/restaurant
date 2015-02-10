# Restaurant Guide

Rails App for Restaurant Guide near school

## Tables
## User
	- name
	- school
	- role (admin, user)
	- devise items
	
## school
	- name
	- address
	
## category
	- name

## place
	- name
	- address
	- phone
	- description:text
	
	has_many :comments
	has_many :pictures

## picture
	caption:text
	place_id
	
	belongs_to :place
	
## comment
	- comment:text
	- place_id:integer
	- user_id:integer

	belongs_to :place
	belongs_to :user

## blog
	- title
	- body
	- author