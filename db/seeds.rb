user1 = User.create(username: "silviu", password_hash: "$2a$10$9PORMrtKX6oF7Ex5vvULf.rXenLZ9Sl/l.hJttu8zVgbljcldm5tO") #pass: sancrai
user2 = User.create(username: "anca", password_hash: "$2a$10$P1U1H/6qCDa6vMKDNrCvweupa7/6Wl5OjFC2YzIUsm1gsyQFbgM4O") #pass: calorifer
user3 = User.create(username: "oana", password_hash: "$2a$10$WLgFYuYqRQADhh/6uwDnq.et29cDWBJue9aq8ugs041JBDD64MsRq") #pass: morcovel



event1 = Event.create(name: "Lollapalooza", location: "Grant Park", contact_person: "Anca Fodor", date:"08/01/2017")
event2 = Event.create(name: "Mayfest", location: "Grant Park", contact_person: "Silviu Fodor", date:"07/01/2018")
event3 = Event.create(name: "asdfghjkl2", location: "Grant Park", contact_person: "Anca Fodor", date:"03/01/2017")
event4 = Event.create(name: "zxcvbnm", location: "Grant Park", contact_person: "Anca Fodor", date:"09/01/2017")
event5 = Event.create(name: "asdfghjkl4", location: "Grant Park", contact_person: "Silviu Fodor", date:"10/01/2017")
event6 = Event.create(name: "October Fest", location: "Grant Park", contact_person: "Silviu Fodor", date:"06/01/2017")
event7 = Event.create(name: "Cinco de Mayo", location: "Grant Park", contact_person: "Anca Fodor", date:"05/01/2017")
event8 = Event.create(name: "Beerfest", location: "Grant Park", contact_person: "Anca Fodor", date:"04/01/2017")
event9 = Event.create(name: "Rock", location: "Grant Park", contact_person: "Silviu Fodor", date:"06/01/2017")

Attendance.create(user_id: 1, event_id: 1)
Attendance.create(user_id: 1, event_id: 2)
Attendance.create(user_id: 1, event_id: 3)
Attendance.create(user_id: 1, event_id: 4)
Attendance.create(user_id: 1, event_id: 5)
Attendance.create(user_id: 1, event_id: 6)
Attendance.create(user_id: 1, event_id: 7)
Attendance.create(user_id: 1, event_id: 8)
Attendance.create(user_id: 1, event_id: 9)
Attendance.create(user_id: 2, event_id: 1)
Attendance.create(user_id: 2, event_id: 2)
Attendance.create(user_id: 2, event_id: 3)
Attendance.create(user_id: 2, event_id: 7)
Attendance.create(user_id: 2, event_id: 9)
Attendance.create(user_id: 3, event_id: 1)
Attendance.create(user_id: 3, event_id: 3)
Attendance.create(user_id: 3, event_id: 5)


