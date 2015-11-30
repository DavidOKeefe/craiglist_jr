# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Category.delete_all
Article.delete_all

categories = 25.times do
  Category.create!(:name => Faker::Commerce.department)
end

users = 25.times do
  User.create!( :email => Faker::Internet.email,
                :password => "password")
end

articles = 100.times do
  Article.create!(:name => Faker::Commerce.product_name,
                  :description => Faker::Lorem.sentence(4),
                  category: Category.all.sample,
                  user: User.all.sample)
end
