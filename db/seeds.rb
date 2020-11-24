# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Book.destroy_all
User.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

puts "Creating user..."


jean_dupuis = { first_name: "jean", last_name: "dupuis", username: "jndps", email: "jean.dupuis@toto.fr", password:"123456"}
paul_young = { first_name: "paul", last_name: "young", username: "plng", email: "paul.young@toto.fr", password:"123456"}
george_michael = { first_name: "george", last_name: "michael", username: "grgmchl", email: "george.michael@toto.fr", password:"123456"}
michael_jackson = { first_name: "michael", last_name: "jackson", username: "mchljcksn", email: "michael.jackson@toto.fr", password:"123456"}
phil_collins = { first_name: "phil", last_name: "collins", username: "phlcllns", email: "phil.collins@toto.fr", password:"123456"}
diana_ross = { first_name: "diana", last_name: "ross", username: "dnrss", email: "diana.ross@toto.fr", password:"123456"}
tupac_shakur = { first_name: "tupac", last_name: "shakur", username: "tpcshkr", email: "tupac.shakur@toto.fr", password:"123456"}
lionel_richie = { first_name: "lionel", last_name: "richie", username: "lnlrch", email: "lionel.richie@toto.fr", password:"123456"}
mariah_carey = { first_name: "mariah", last_name: "carey", username: "mrhcr", email: "mariah.carey@toto.fr", password:"123456"}
alanis_morissette = { first_name: "alanis", last_name: "morissette", username: "lnsmrsstt", email: "alanis.morissette@toto.fr", password:"123456"}


users =[ jean_dupuis, paul_young, george_michael, michael_jackson, phil_collins, diana_ross, tupac_shakur, lionel_richie, mariah_carey, alanis_morissette ]

users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end
puts "Finished!"


book_a={title:"", description:"",user_id:"",author:"",collection:"",editor:"",type:"",isbn:"",state:"",wish:"",deposit:""}
 


# Message.destroy_all
# User.destroy_all
# Channel.destroy_all

# ActiveRecord::Base.connection.tables.each do |t|
#   ActiveRecord::Base.connection.reset_pk_sequence!(t)
# end

# names = %w(general paris react)
# nicknames = %w(Papillard ssaunier monsieurpaillard krokrob Eschults)

# channels = names.map do |name|
#   Channel.find_or_create_by(name: name)
# end

# users = nicknames.map do |nickname|
#   User.create(email: "#{nickname.downcase}@lewagon.com", nickname: nickname, password: "testtest")
# end

# 20.times do
#   Message.create! user: users.sample, channel: channels.sample, content: Faker::HowIMetYourMother.quote
# end

# puts 'Channels:'
# channels.each do |channel|
#   puts "- #{channel.id}: #{channel.name}"
# end