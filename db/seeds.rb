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

jean_dupuis = { fist_name: "jean", last_name: "dupuis", username: "jndps", email: "jean.dupuis@toto.fr", password:"123"}
paul_young = { fist_name: "paul", last_name: "young", username: "plng", email: "paul.young@toto.fr", password:"123"}
george_michael = { fist_name: "george", last_name: "michael", username: "grgmchl", email: "george.michael@toto.fr", password:"123"}
michael_jackson = { fist_name: "michael", last_name: "jackson", username: "mchljcksn", email: "michael.jackson@toto.fr", password:"123"}
phil_collins = { fist_name: "phil", last_name: "collins", username: "phlcllns", email: "phil.collins@toto.fr", password:"123"}
diana_ross = { fist_name: "diana", last_name: "ross", username: "dnrss", email: "diana.ross@toto.fr", password:"123"}
tupac_shakur = { fist_name: "tupac", last_name: "shakur", username: "tpcshkr", email: "tupac.shakur@toto.fr", password:"123"}
lionel_richie = { fist_name: "lionel", last_name: "richie", username: "lnlrch", email: "lionel.richie@toto.fr", password:"123"}
mariah_carey = { fist_name: "mariah", last_name: "carey", username: "mrhcr", email: "mariah.carey@toto.fr", password:"123"}
alanis_morissette = { fist_name: "alanis", last_name: "morissette", username: "lnsmrsstt", email: "alanis.morissette", password:"123"}


users =[ jean_dupuis, paul_young, george_michael, michael_jackson, phil_collins, diana_ross, tupac_shakur, lionel_richie, mariah_carey, alanis_morissette ]

users.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name} #{user.id}"
end
puts "Finished!"



  
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