# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin
user2 = User.find_or_create_by_email :name => 'Second User', :email => 'user2@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user2.name
user2.add_role :DEO
user3 = User.find_or_create_by_email :name => 'Third User', :email => 'user3@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user3.name
user3.add_role :Ministry
user4 = User.find_or_create_by_email :name => 'Fourth User', :email => 'user4@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user4.name
user4.add_role :School

puts 'DEFAULT REGIONS'
region1 = Region.find_or_create_by_region_name :region_name => 'Central'
puts 'region:' << region1.region_name
region2 = Region.find_or_create_by_region_name :region_name => 'East'
puts 'region:' << region2.region_name
region3 = Region.find_or_create_by_region_name :region_name => 'West'
puts 'region:' << region3.region_name
region4 = Region.find_or_create_by_region_name :region_name => 'North'
puts 'region:' << region4.region_name

puts 'DEFAULT DISTRICTS'
district1 = region1.districts.create(district_name: 'Kampala')
district2 = region1.districts.create(district_name: 'Mukono')
puts region1.districts.all.to_s

district3 = region2.districts.create(district_name: 'Jinja')
district4 = region2.districts.create(district_name: 'Iganga')
puts region2.districts.all.to_s

district5 = region3.districts.create(district_name: 'Mbarara')
district6 = region3.districts.create(district_name: 'Kabale')
puts region3.districts.all.to_s

district7 = region4.districts.create(district_name: 'Gulu')
district8 = region4.districts.create(district_name: 'Arua')
puts region4.districts.all.to_s

puts 'DEFAULT COUNTIES'
county1 = district1.counties.create(county_name: 'Kawempe')
county2 = district1.counties.create(county_name: 'Rubaga')

county3 = district2.counties.create(county_name: 'Nakifuma')
county4 = district2.counties.create(county_name: 'Mukono County')

county5 = district3.counties.create(county_name: 'Buwenge')
county6 = district3.counties.create(county_name: 'Butembe')

county7 = district4.counties.create(county_name: 'Bugweri')
county8 = district4.counties.create(county_name: 'Busiki')
county10 = district4.counties.create(county_name: 'Kigulu')
county11 = district4.counties.create(county_name: 'Luuka')

county12 = district5.counties.create(county_name: 'Rwampara')

county13 = district6.counties.create(county_name: 'Rubanda')
county14 = district6.counties.create(county_name: 'Rukiga')
county15 = district6.counties.create(county_name: 'Ndorwa')

county16 = district7.counties.create(county_name: 'Achwa')
county17 = district7.counties.create(county_name: 'Omoro')

county18 = district8.counties.create(county_name: 'Terego')
county19 = district8.counties.create(county_name: 'Vurra')
county20 = district8.counties.create(county_name: 'Madi-Okollo')
county21 = district8.counties.create(county_name: 'Ayivu')


