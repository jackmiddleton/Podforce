puts "Starting the seed"

puts "Deleting all data"
Email.destroy_all
Task.destroy_all
Contact.destroy_all
User.destroy_all

puts "Creating 3 users"
user1 = User.create!({ email: "jack@middleton.com", password: "123456"})
user2 = User.create!({ email: "franciscaribeironunes@gmail.com", password: "123456"})
user3 = User.create!({ email: "marc@weitzmann.org", password: "123456"})

puts "Creating 2 contacts"

User.all.each do |user|
  contact1 = Contact.create!({ user: user, first_name: "Sarah", last_name: "Jones", phone: "+447975777666", birth: "29.05.1986", company: "Message Heard Ltd", email: "sarah.jones@message-heard.co.uk", note: "no notes yet", instagram: "https://www.instagram.com/sarah_jones", twitter: "https://twitter.com/sarah_jones", linkedin: "https://www.linkedin.com/in/sarah_jones", tag: "no tags yet" })

  contact2 = Contact.create!({ user: user, first_name: "Russell", last_name: "Kane", phone: "+447975777666", birth: "15.10.1975", company: "Spirit Studios Ltd", email: "russel.kane@spirit-studios.co.uk", note: "no notes yet", instagram: "https://www.instagram.com/russell_kane", twitter: "https://twitter.com/russell_kane", linkedin: "https://www.linkedin.com/in/russell_kane", tag: "no tags yet" })
end

contact1 = Contact.first
contact2 = Contact.last

puts "Creating 2 tasks for each of the 3 users"
task1 = Task.create!({contact: contact1, user: user1, description: "Set all the goals for this month", priority: "High", date_time: DateTime.new(2022,2,3), ownership: "You", complete: false, category: "finance"})

task2 = Task.create!({contact: contact2, user: user1, description: "See the reviews", priority: "High", date_time: DateTime.new(2022,2,3), ownership: "You", complete: false, category: "review"})

task3 = Task.create!({contact: contact1, user: user2, description: "Schedule a ZOOM meeting", priority: "High", date_time: DateTime.new(2022,2,3), ownership: "You", complete: false, category: "appointment"})

task4 = Task.create!({contact: contact2, user: user2, description: "Send email with audiogram", priority: "High", date_time: DateTime.new(2022,2,3), ownership: "You", complete: false, category: "email"})

task5 = Task.create!({contact: contact1, user: user3, description: "Send email with audiogram", priority: "High", date_time: DateTime.new(2022,2,3), ownership: "You", complete: false, category: "email"})

task6 = Task.create!({contact: contact2, user: user3, description: "Send email with invitation", priority: "High", date_time: DateTime.new(2022,2,3), ownership: "You", complete: false, category: "email"})

puts "Creating 2 emails for each of the 3 users"

email1 = Email.create!({contact: contact1, to: contact1, subject: "ZOOM meeting", content: "Hi Sarah, please lets discuss our next podcast episode. Therefore I would like to invite you to a ZOOM meeting. Best regards. Jack", date_time: DateTime.new(2022,2,3)})

email2 = Email.create!({contact: contact2, to: contact1, subject: "ZOOM meeting", content: "Hi Russell, excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Best regards. Jack", date_time: DateTime.new(2022,2,3)})

email3 = Email.create!({contact: contact1, to: contact1, subject: "ZOOM meeting", content: "Hi Sarah, please lets discuss our next podcast episode. Therefore I would like to invite you to a ZOOM meeting. Best regards. Francisca", date_time: DateTime.new(2022,2,3)})

email4 = Email.create!({contact: contact2, to: contact1, subject: "ZOOM meeting", content: "Hi Russell, ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Best regards. Best regards. Francisca", date_time: DateTime.new(2022,2,3)})

email5 = Email.create!({contact: contact1, to: contact1, subject: "ZOOM meeting", content: "Hi Sarah, please lets discuss our next podcast episode. Therefore I would like to invite you to a ZOOM meeting. Best regards. Marc", date_time: DateTime.new(2022,2,3)})

email6 = Email.create!({contact: contact2, to: contact1, subject: "ZOOM meeting", content: "Hi Russell, ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Best regards. Marc", date_time: DateTime.new(2022,2,3)})

puts "Seed is finished"
