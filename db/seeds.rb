User.create!([
  {email: "beth@email.com", encrypted_password: "$2a$10$OVy7xDkqsHZlXJmvVatPo.n5BzeJzuQOA1xVSwp1g99eNAtqBX15C", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2016-01-11 10:09:04", last_sign_in_at: "2016-01-10 23:14:38", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: nil, role: "admin"},
  {email: "gary@email.com", encrypted_password: "$2a$10$KZtcDyWa1sspzOm0gsmLHuyMB2g8eqd/sHlT0D8Jk4TdZkFWo07Dy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-01-11 12:29:42", last_sign_in_at: "2016-01-11 10:08:52", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: nil, role: nil}
])
Event.create!([
  {name: "Borders Festival", location: "Galashiels, Scottish Borders", start_date: "2016-06-10", end_date: "2016-06-12", description: "The biggest music festival in the Borders area!"}
])
Act.create!([
  {name: "Metallica", act_image: "https://i.ytimg.com/vi/CFmT3UzEcKk/hqdefault.jpg", description: "The biggest metal band on the planet. Watch out!", event_id: 1},
  {name: "Fall Out Boy", act_image: "", description: "Pop punk rockers from the USA.", event_id: 1},
  {name: "Green Day", act_image: "", description: "Billie-Joe Armstrong headlines this rock band.", event_id: 1},
  {name: "Arctic Monkeys", act_image: "", description: "They're from Leeds?", event_id: 1},
  {name: "Paramore", act_image: "", description: "Hayley Williams and co.", event_id: 1}
])
Act::HABTM_Keywords.create!([
  {act_id: 1, keyword_id: 3},
  {act_id: 1, keyword_id: 2},
  {act_id: 2, keyword_id: 2},
  {act_id: 1, keyword_id: 6}
])
Booking.create!([
  {user_id: 1, timeslot_id: 1},
  {user_id: 1, timeslot_id: 6},
  {user_id: 1, timeslot_id: 2},
  {user_id: 1, timeslot_id: 5},
  {user_id: 1, timeslot_id: 15},
  {user_id: 1, timeslot_id: 19},
  {user_id: 2, timeslot_id: 17},
  {user_id: 2, timeslot_id: 1}
])

Keyword.create!([
  {name: "rock"},
  {name: "metal"},
  {name: "comedy"},
  {name: "pop-punk"},
  {name: "1980s"}
])
Keyword::HABTM_Acts.create!([
  {act_id: 1, keyword_id: 3},
  {act_id: 1, keyword_id: 2},
  {act_id: 2, keyword_id: 2},
  {act_id: 1, keyword_id: 6}
])
Timeslot.create!([
  {venue_id: 1, act_id: 1, start_time: "2016-06-10 20:00:00", end_time: "2016-06-10 21:00:00", capacity: nil},
  {venue_id: 1, act_id: 3, start_time: "2016-06-11 22:00:00", end_time: "2016-06-11 23:00:00", capacity: nil},
  {venue_id: 1, act_id: 2, start_time: "2016-06-12 15:00:00", end_time: "2016-06-12 16:00:00", capacity: nil},
  {venue_id: 2, act_id: 5, start_time: "2016-06-12 21:30:00", end_time: "2016-06-12 22:30:00", capacity: nil},
  {venue_id: 5, act_id: 1, start_time: "2016-06-12 21:30:00", end_time: "2016-06-12 22:30:00", capacity: nil},
  {venue_id: 6, act_id: 5, start_time: "2016-06-11 13:30:00", end_time: "2016-06-11 14:30:00", capacity: 1}
])
Venue.create!([
  {name: "Main Stage", location: "Field 2", venue_image: "http://www.smash-uk.com/frf13/stages/images/stage-img4-1.jpg", description: "The biggest stage of the festival, where the headline acts play.", event_id: 1},
  {name: "BBC Introducing Stage", location: "Field 3", venue_image: "", description: "The home of upcoming artists, presented by your favourite BBC radio hosts.", event_id: 1},
  {name: "Comedy Tent", location: "Field 2", venue_image: "", description: "Have a chuckle at some comedy acts here.", event_id: 1},
  {name: "Secret Stage", location: "", venue_image: "", description: "Secret gigs held here.", event_id: 1},
  {name: "Signing Tent", location: "", venue_image: "", description: "Make a booking for the signing tent to meet your favourite bands and get their autographs. Be warned, places may be limited!", event_id: 1}
])
