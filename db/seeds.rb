puts "Starting the seed"

puts "Deleting all data"
User.destroy_all
Contact.destroy_all

puts "Creating 3 users"
user1 = User.create({ email: "jack@middleton.com", password: "123456", admin: true})
user2 = User.create({ email: "franciscaribeironunes@gmail.com", password: "123456"})
user3 = User.create({ email: "marc@weitzmann.org", password: "123456"})

puts "Creating 2 contacts"
contact1 = Contact.create({ first_name: "Sarah", last_name: "Jones", phone: "+447975777666", birth: "29.05.1986", company: "Message Heard Ltd", email: sarah.jones@message-heard.co.uk, note: "no notes yet", instagram: "https://www.instagram.com/sarah_jones", twitter: "https://twitter.com/sarah_jones", linkedin: "https://www.linkedin.com/in/sarah_jones", tag: "no tags yet" })

contact2 = Contact.create({ first_name: "Russell", last_name: "Kane", phone: "+447975777666", birth: "15.10.1975", company: "Spirit Studios Ltd", email: russel.kane@spirit-studios.co.uk, note: "no notes yet", instagram: "https://www.instagram.com/russell_kane", twitter: "https://twitter.com/russell_kane", linkedin: "https://www.linkedin.com/in/russell_kane", tag: "no tags yet" })

puts "Seed is finished"
