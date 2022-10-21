# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  user = User.create(name: Faker::Name.name, email: "test_email#{i}@email.test" )
end

user_district_1 = UserDistrict.create(user_id: User.all[0].id, district_id: District.order('RANDOM()').first.id)
user_district_2 = UserDistrict.create(user_id: User.all[1].id, district_id: District.order('RANDOM()').first.id)
user_district_3 = UserDistrict.create(user_id: User.all[2].id, district_id: District.order('RANDOM()').first.id)
user_district_4 = UserDistrict.create(user_id: User.all[3].id, district_id: District.order('RANDOM()').first.id)
user_district_5 = UserDistrict.create(user_id: User.all[4].id, district_id: District.order('RANDOM()').first.id)
