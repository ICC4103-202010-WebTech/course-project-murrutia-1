# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mailbox1 = MailBox.create(emitter: 1, receiver: 2, message: "Do you study for the exam?")
mailbox2 = MailBox.create(emitter: 2, receiver: 1, message: "no :( ")
mailbox3 = MailBox.create(emitter: 1, receiver: 2, message: "oh, good luck")
mailbox4 = MailBox.create(emitter: 2, receiver: 1, message: "I will need it")
mailbox5 = MailBox.create(emitter: 3, receiver: 4, message: "hi")
mailbox6 = MailBox.create(emitter: 4, receiver: 3, message: "Hi!")
mailbox7 = MailBox.create(emitter: 3, receiver: 4, message: "Hmmm")
mailbox8 = MailBox.create(emitter: 4, receiver: 3, message: "Bye!")
mailbox9 = MailBox.create(emitter: 5, receiver: 6, message: "I like dogs")
mailbox10 = MailBox.create(emitter: 6, receiver: 5, message: "oh, good to know")
mailbox11 = MailBox.create(emitter: 5, receiver: 6, message: "Do you have a dog?")
mailbox12 = MailBox.create(emitter: 6, receiver: 5, message: "no, but my cousin has one")
mailbox13 = MailBox.create(emitter: 7, receiver: 8, message: "I wanna party all day")
mailbox14 = MailBox.create(emitter: 8, receiver: 7, message: "oh me too!!")
mailbox15 = MailBox.create(emitter: 7, receiver: 8, message: "let's go to a party")
mailbox16 = MailBox.create(emitter: 8, receiver: 7, message: "oh, okay")
mailbox17 = MailBox.create(emitter: 9, receiver: 10, message: "hi, Im anonymous")
mailbox18 = MailBox.create(emitter: 10, receiver: 9, message: "hi anonymous")
mailbox19 = MailBox.create(emitter: 9, receiver: 10, message: "you're scared of me?")
mailbox20 = MailBox.create(emitter: 10, receiver: 9, message: "not really")
mailbox1.save!
mailbox2.save!
mailbox3.save!
mailbox4.save!
mailbox5.save!
mailbox6.save!
mailbox7.save!
mailbox8.save!
mailbox9.save!
mailbox10.save!
mailbox11.save!
mailbox12.save!
mailbox13.save!
mailbox14.save!
mailbox15.save!
mailbox16.save!
mailbox17.save!
mailbox18.save!
mailbox19.save!
mailbox20.save!

user1 = User.create(username: "martin", password: "martinU", full_name: "Martin Urrutia", email: "martin@gmail.com", age: 21, admin: true)
user2 = User.create(username: "juan", password: "juanan", full_name: "Juan Antonio", email: "juan@gmail.com", age: 23, admin: false)
user3 = User.create(username: "juliaa", password: "123floor", full_name: "Julia Sanchez", email: "julia@gmail.com", age: 22, admin: false)
user4 = User.create(username: "julio", password: "123july", full_name: "Julio Perez", email: "julio@gmail.com", age: 16, admin: true)
user5 = User.create(username: "pepe", password: "tenedor", full_name: "Pepe Gonzalez", email: "pepe1@gmail.com", age: 44, admin: false)
user6 = User.create(username: "pepe2", password: "cuchara", full_name: "Pepe Perez", email: "pepe2@gmail.com", age: 32, admin: false)
user7 = User.create(username: "pepe3", password: "tetera", full_name: "Pepe Fernandez", email: "pepe3@gmail.com", age: 18, admin: false)
user8 = User.create(username: "Tulio", password: "123cleo", full_name: "Tulio Jimenez", email: "tulio@gmail.com", age: 21, admin: true)
user9 = User.create(username: "Rosa", password: "123olla", full_name: "Rosa Diaz", email: "rosa@gmail.com", age: 30, admin: false)
user10 = User.create(username: "lola", password: "123alola", full_name: "Paola Gutierrez", email: "paola@gmail.com", age: 17, admin: false)

organization1 = Organization.create(name: "WebTech", description: "Only for students", user_id: 1)
organization2 = Organization.create(name: "Neighbors board", description: "For neighborhood residents", user_id: 2)
organization3 = Organization.create(name: "ONU", description: "United Nations Organization", user_id: 3)
organization4 = Organization.create(name: "UANDES", description: "Universidad de los Andes", user_id: 4)
organization5 = Organization.create(name: "Race", description: "All about racing", user_id: 5)

event1 = Event.create(name: "Exam", description: "The last exam", location: "home", creation_date: 2020 - 7 - 1, starting_event_date: 2021 - 11 - 11, event_privacy: 1, user_id: user1.id)
event2 = Event.create(name: "Party", description: "Zoom party", location: "everywhere", creation_date: 2020 - 9 - 3, starting_event_date: 2020 - 8 - 9, event_privacy: 0, user_id: user2.id)
event3 = Event.create(name: "Speech", description: "Speech about make peace", location: "Santiago", creation_date: 2020 - 6 - 29, starting_event_date: 2021 - 1 - 3, event_privacy: 0, user_id: user4.id)
event4 = Event.create(name: "Concert", description: "Of the orchestra", location: "sydney opera house", creation_date: 2020 - 9 - 1, starting_event_date: 2021 - 3 - 24, event_privacy: 0, organization_id: organization4.id, user_id: user3.id)
event5 = Event.create(name: "Race", description: "The final", location: "Viña del mar", creation_date: 2020 - 12 - 1, starting_event_date: 2021 - 4 - 13, event_privacy: 1, organization_id: organization5.id, user_id: user1.id)



organization1.events << event1
organization2.events << event2
organization3.events << event3
organization4.events << event4
organization5.events << event5

useronorg1 = UserOnOrganization.create(user_role: 0, user_id: user1.id, organization: organization1)
useronorg2 = UserOnOrganization.create(user_role: 1, user_id: user1.id, organization: organization2)
useronorg3 = UserOnOrganization.create(user_role: 0, user_id: user2.id, organization: organization2)
useronorg4 = UserOnOrganization.create(user_role: 1, user_id: user2.id, organization: organization3)
useronorg5 = UserOnOrganization.create(user_role: 1, user_id: user3.id, organization: organization1)
useronorg6 = UserOnOrganization.create(user_role: 0, user_id: user3.id, organization: organization3)
useronorg7 = UserOnOrganization.create(user_role: 0, user_id: user4.id, organization: organization3)
useronorg8 = UserOnOrganization.create(user_role: 1, user_id: user4.id, organization: organization1)
useronorg9 = UserOnOrganization.create(user_role: 0, user_id: user5.id, organization: organization1)
useronorg10 = UserOnOrganization.create(user_role: 0, user_id: user5.id, organization: organization3)
useronorg12 = UserOnOrganization.create(user_role: 0, user_id: user6.id, organization: organization2)
useronorg13 = UserOnOrganization.create(user_role: 0, user_id: user6.id, organization: organization4)
useronorg14 = UserOnOrganization.create(user_role: 1, user_id: user6.id, organization: organization5)
useronorg15 = UserOnOrganization.create(user_role: 0, user_id: user7.id, organization: organization4)
useronorg16 = UserOnOrganization.create(user_role: 0, user_id: user7.id, organization: organization5)
useronorg18 = UserOnOrganization.create(user_role: 0, user_id: user8.id, organization: organization4)
useronorg19 = UserOnOrganization.create(user_role: 0, user_id: user8.id, organization: organization5)
useronorg21 = UserOnOrganization.create(user_role: 0, user_id: user9.id, organization: organization4)
useronorg22 = UserOnOrganization.create(user_role: 0, user_id: user9.id, organization: organization5)
useronorg24 = UserOnOrganization.create(user_role: 0, user_id: user10.id, organization: organization4)
useronorg25 = UserOnOrganization.create(user_role: 0, user_id: user10.id, organization: organization5)

systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user1.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user2.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user3.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user4.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user5.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user6.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user7.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user8.id)
systemadmin = SystemAdministrator.create(is_admin: 1, user_id: user9.id)
systemadmin = SystemAdministrator.create(is_admin: 0, user_id: user10.id)

useronevent1 = UserOnEvent.create(status: 0, event: event1, user_id: user1.id)
useronevent2 = UserOnEvent.create(status: 0, event: event1, user_id: user2.id)
useronevent3 = UserOnEvent.create(status: 1, event: event2, user_id: user2.id)
useronevent4 = UserOnEvent.create(status: 1, event: event2, user_id: user3.id)
useronevent5 = UserOnEvent.create(status: 2, event: event3, user_id: user4.id)
useronevent6 = UserOnEvent.create(status: 2, event: event3, user_id: user1.id)
useronevent7 = UserOnEvent.create(status: 2, event: event4, user_id: user3.id)
useronevent8 = UserOnEvent.create(status: 1, event: event4, user_id: user2.id)
useronevent9 = UserOnEvent.create(status: 0, event: event4, user_id: user4.id)

vote1 = DateVote.create(event: event1, user_id: user1.id, date_voted: 2020 - 3 - 4)
vote2 = DateVote.create(event: event1, user_id: user2.id,date_voted: 2020 - 5 - 5)
vote3 = DateVote.create(event: event2, user_id: user2.id,date_voted: 2020 - 1 - 1)
vote4 = DateVote.create(event: event2, user_id: user3.id,date_voted: 2020 - 6 - 2)
vote5 = DateVote.create(event: event3, user_id: user4.id,date_voted: 2020 - 12 - 2)
vote6 = DateVote.create(event: event3, user_id: user1.id,date_voted: 2020 - 3 - 12 )
vote7 = DateVote.create(event: event4, user_id: user3.id,date_voted: 2020 - 8 - 11)
vote8 = DateVote.create(event: event4, user_id: user2.id,date_voted: 2020 - 10 - 6)
vote9 = DateVote.create(event: event5, user_id: user5.id,date_voted: 2020 - 4 - 3)
vote13 = DateVote.create(event: event5, user_id: user9.id,date_voted: 2020 - 12 - 6)
vote14 = DateVote.create(event: event5, user_id: user10.id,date_voted: 2020 - 7 - 10)

comment1 = Comment.create(message: "Oh no, I hate exams", event: event1, user_id: user1.id)
comment2 = Comment.create(message: "Oh yeah a party", event: event2, user_id: user2.id)
comment3 = Comment.create(message: "I will see it", event: event3, user_id: user3.id)
comment4 = Comment.create(message: "Boring", event: event4, user_id: user4.id)
comment5 = Comment.create(message: "Hope it doesnt postpone more",event: event1, user_id: user3.id)
comment6 = Comment.create(message: "I got beer", event: event2, user_id: user1.id)
comment7 = Comment.create(message: "We need peace", event: event3, user_id: user4.id)
comment8 = Comment.create(message: "I love it", event: event4, user_id: user2.id)
comment9 = Comment.create(message: "I will go with my father", event: event5, user_id: user5.id)
comment13 = Comment.create(message: "OMG", event: event5, user_id: user9.id)
comment17 = Comment.create(message: "im going to sneak into", event: event5, user_id: user7.id)
comment19 = Comment.create(message: "Wow, I can wait", event: event5, user_id: user10.id)

reply1 = CommentReply.create(message: "it's easy if you study", comment_id: comment1.id, user_id: user2.id)
reply2 = CommentReply.create(message: "it is a zoom party", comment_id: comment2.id, user_id: user3.id)
reply3 = CommentReply.create(message: "me too", comment_id: comment3.id, user_id: user4.id)
reply4= CommentReply.create(message: "you are boring", comment_id: comment4.id, user_id: user2.id)
reply5 = CommentReply.create(message: "mee too!!", comment_id: comment5.id, user_id: user3.id)
reply6 = CommentReply.create(message: "Send me one", comment_id: comment6.id, user_id: user4.id)
reply7 = CommentReply.create(message: "it's true", comment_id: comment7.id, user_id: user2.id)
reply8 = CommentReply.create(message: "me too", comment_id: comment9.id, user_id: user5.id)
reply13 = CommentReply.create(message: "neither do I", comment_id: comment19.id, user_id: user10.id)
reply14 = CommentReply.create(message: "calling the police", comment_id: comment17.id, user_id: user5.id)
