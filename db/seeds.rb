# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.where(name: '감자땅').first_or_create
Category.where(name: '김밥').first_or_create
Category.where(name: '김치찌게').first_or_create
Category.where(name: '떡복기').first_or_create
Category.where(name: '만두').first_or_create
Category.where(name: '라면').first_or_create
Category.where(name: '삼겹살').first_or_create
Category.where(name: '생선구이').first_or_create
Category.where(name: '부대찌게').first_or_create
Category.where(name: '쌈밥').first_or_create
Category.where(name: '돈까스').first_or_create
Category.where(name: '아이스크림').first_or_create
Category.where(name: '빙수').first_or_create
Category.where(name: '짜장면').first_or_create
Category.where(name: '탕수육').first_or_create
Category.where(name: '짬퐁').first_or_create


School.where(name: '낙생고', address: '경기도 판교').first_or_create
School.where(name: '중앙고', address: '경기도 분당').first_or_create
School.where(name: '분당고', address: '경기도 분당').first_or_create
School.where(name: '서현고', address: '경기도 분당').first_or_create


Menu.where(name: '맛진 떡복기', category: '떡복기', place: '꿈의 분식').first_or_create
Menu.where(name: '천국만두', category: '떡복기', place: '고복민').first_or_create
Menu.where(name: '참치 김밥', category: '떡복기', place: '사감선생').first_or_create
Menu.where(name: '죽이는 삼겹살', category: '떡복기', place: '돼지 천국').first_or_create

