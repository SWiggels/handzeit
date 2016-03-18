# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create :email => 'daniel@oechslin.eu', :password => '$2a$10$jQCy5OVPi9oylyGBmbn.5OKBuM.EXhhQ8RhTyXhkNnP2pVyq3nkvG', :password_confirmation => "$2a$10$jQCy5OVPi9oylyGBmbn.5OKBuM.EXhhQ8RhTyXhkNnP2pVyq3nkvG"

news = News.create! :title => '', :content=> '', :picture => ''
