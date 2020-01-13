# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Guest_user")
user2 = User.create(name: "Babs")
user3 = User.create(name: "Shadman")
user4 = User.create(name: "Jamie")

event1 = Event.create(name: "B's Bday", creator: user3, start_time: 1591588800)
event2 = Event.create(name: "Housewarming", creator: user2, start_time: 1578940256, end_time: 1578941256)
event3 = Event.create(name: "Graduation", creator: user4, start_time: 1578940256, end_time: 1578941256)

userevent1 = UserEvent.create(event: event1, attendee: user1)
userevent2 = UserEvent.create(event: event1, attendee: user2)
userevent4 = UserEvent.create(event: event1, attendee: user4)
userevent6 = UserEvent.create(event: event3, attendee: user3)

guestTest = UserEvent.create(event: event2, attendee: user1, attendee_name: "danny")