# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Cleaning database..."
# Book.destroy_all
# User.destroy_all

# ActiveRecord::Base.connection.tables.each do |t|
#   ActiveRecord::Base.connection.reset_pk_sequence!(t)
# end

# puts "Creating user..."


# jean_dupuis = { first_name: "jean", last_name: "dupuis", username: "jndps", email: "jean.dupuis@toto.fr", password:"123456"}
# paul_young = { first_name: "paul", last_name: "young", username: "plng", email: "paul.young@toto.fr", password:"123456"}
# george_michael = { first_name: "george", last_name: "michael", username: "grgmchl", email: "george.michael@toto.fr", password:"123456"}
# michael_jackson = { first_name: "michael", last_name: "jackson", username: "mchljcksn", email: "michael.jackson@toto.fr", password:"123456"}
# phil_collins = { first_name: "phil", last_name: "collins", username: "phlcllns", email: "phil.collins@toto.fr", password:"123456"}
# diana_ross = { first_name: "diana", last_name: "ross", username: "dnrss", email: "diana.ross@toto.fr", password:"123456"}
# tupac_shakur = { first_name: "tupac", last_name: "shakur", username: "tpcshkr", email: "tupac.shakur@toto.fr", password:"123456"}
# lionel_richie = { first_name: "lionel", last_name: "richie", username: "lnlrch", email: "lionel.richie@toto.fr", password:"123456"}
# mariah_carey = { first_name: "mariah", last_name: "carey", username: "mrhcr", email: "mariah.carey@toto.fr", password:"123456"}
# alanis_morissette = { first_name: "alanis", last_name: "morissette", username: "lnsmrsstt", email: "alanis.morissette@toto.fr", password:"123456"}


# users =[ jean_dupuis, paul_young, george_michael, michael_jackson, phil_collins, diana_ross, tupac_shakur, lionel_richie, mariah_carey, alanis_morissette ]

# users.each do |attributes|
#   user = User.create!(attributes)
#   puts "Created #{user.email}"
# end
# puts "Finished!"


book_a ={ title:"le lezard", 
          description:"le lezard est un reptile pouvant prendre plusieurs formes",
          user_id: User.find_by(username:"jndps").id,
          author:"Lee Zard",
          collection:"Sang Froid",
          editor:"betes sauvages",
          genre:"science",
          isbn:"1234567891234",
          state:"good",
          wish: true,
          deposit:true
        }
book_b ={ title:"le dindon", 
          description:"le dindon est un oiseau qui ne vole pas et qui a disparu",
          user_id: User.find_by(username:"jndps").id,
          author:"Ding Dong",
          collection:"la deplumée",
          editor:"betes sauvages",
          genre:"science",
          isbn:"1234567891235",
          state:"very good",
          wish: true,
          deposit:true
         }
book_c ={ title:"le Puma", 
          description:"le puma ne peut parler de lui même que par lui même",
          user_id: User.find_by(username:"jndps").id,
          author:"Alain Delon",
          collection:"Gros Melon",
          editor:"Cherche Midi",
          genre:"roman",
          isbn:"1234567891236",
          state:"very good",
          wish: true,
          deposit:true
        }
book_d ={ title:"les cornes musent", 
        description:"quand les cornes musents ca s'entend",
        user_id: User.find_by(username:"jndps").id,
        author:"Alain Vache",
        collection:"Grosjean",
        editor:"Scolar",
        genre:"roman",
        isbn:"1234567891237",
        state:"bad",
        wish: true,
        deposit:true
      }

book_e ={ title:"Karaté Kid", 
          description:"Larusso doit combattre les mechants Kobra Kaï",
          user_id: User.find_by(username:"jndps").id,
          author:"Camille Combat",
          collection:"Fureur de vivre",
          editor:"Cherche Midi",
          genre:"roman",
          isbn:"1234567891238",
          state:"very good",
          wish: true,
          deposit:true
        }
book_f ={ title:"ET l'intraterrestre", 
          description:"ET téléphone 5G",
          user_id: User.find_by(username:"jndps").id,
          author:"Thierry Joueurdelamontagne",
          collection:"wahou",
          editor:"amblin",
          genre:"sf",
          isbn:"1234567891239",
          state:"bad",
          wish: true,
          deposit:true
        }
book_g ={ title:"Karaté Kid", 
          description:"Larusso doit combattre les mechants Kobra Kaï",
          user_id: User.find_by(username:"jndps").id,
          author:"Camille Combat",
          collection:"Fureur de vivre",
          editor:"Cherche Midi",
          genre:"roman",
          isbn:"1234567891238",
          state:"very good",
          wish: true,
          deposit:true
        }
book_h ={ title:"ET l'intraterrestre", 
          description:"ET téléphone 5G",
          user_id: User.find_by(username:"jndps").id,
          author:"Thierry Joueurdelamontagne",
          collection:"wahou",
          editor:"amblin",
          genre:"sf",
          isbn:"1234567891239",
          state:"bad",
          wish: true,
          deposit:true
        }
book_i ={ title:"Mbappe l'homme de la situation", 
          description:"les plus beau but de l'histoire du football sont là",
          user_id: User.find_by(username:"jndps").id,
          author:"jérémie Sivan",
          collection:"Sueur froide",
          editor:"Panini",
          genre:"sport",
          isbn:"1234567891240",
          state:"very good",
          wish: true,
          deposit:true
        }
book_j ={ title:"Voiture droit devant", 
          description:"les plus beau moment de la F1 télécommandé",
          user_id: User.find_by(username:"jndps").id,
          author:"Pils Neuv",
          collection:"bling bling",
          editor:"volant",
          genre:"sport",
          isbn:"1234567891241",
          state:"bad",
          wish: true,
          deposit:true
        }




books=[book_a,book_b,book_c,book_d,book_e,book_f,book_g,book_h,book_i,book_j]
books.each do |attributes|
  book = Book.create!(attributes)
  puts "Created #{book.title} #{book.id}"
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