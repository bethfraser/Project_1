User.create!([
  {email: "beth@email.com", encrypted_password: "$2a$10$OVy7xDkqsHZlXJmvVatPo.n5BzeJzuQOA1xVSwp1g99eNAtqBX15C", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 13, current_sign_in_at: "2016-01-12 22:11:37", last_sign_in_at: "2016-01-12 16:22:13", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: nil, role: "admin"},
  {email: "gary@email.com", encrypted_password: "$2a$10$KZtcDyWa1sspzOm0gsmLHuyMB2g8eqd/sHlT0D8Jk4TdZkFWo07Dy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 7, current_sign_in_at: "2016-01-12 17:40:27", last_sign_in_at: "2016-01-12 11:05:49", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: nil, role: nil}
])
Act.create!([
  {name: "Metallica", act_image: "", description: "The biggest metal band on the planet. Watch out!", event_id: 1, headline_image: "https://upload.wikimedia.org/wikipedia/commons/b/b7/Metallica_logo.png"},
  {name: "Fall Out Boy", act_image: "", description: "Pop punk rockers from the USA.", event_id: 1, headline_image: "http://40.media.tumblr.com/1e6b6adcb9ad91119c7819f2cf0c11e0/tumblr_n8yqibZqKI1trip1wo6_1280.png"},
  {name: "Green Day", act_image: "", description: "Billie-Joe Armstrong headlines this rock band.", event_id: 1, headline_image: nil},
  {name: "Arctic Monkeys", act_image: "", description: "They're from Leeds?", event_id: 1, headline_image: nil},
  {name: "Paramore", act_image: "", description: "Hayley Williams and co.", event_id: 1, headline_image: nil},
  {name: "Bill Bailey", act_image: "", description: "", event_id: 1, headline_image: nil},
  {name: "Biffy Clyro", act_image: "", description: "", event_id: 1, headline_image: "http://data.whicdn.com/images/127570404/original.png"},
  {name: "Rage Against The Machine", act_image: "", description: "", event_id: 1, headline_image: "https://moshworld.files.wordpress.com/2010/03/lineup_rage.png"},
  {name: "Miranda Hart", act_image: "", description: "", event_id: 1, headline_image: nil},
  {name: "Ross Noble", act_image: "", description: "", event_id: 1, headline_image: nil},
  {name: "Linkin Park", act_image: "", description: "", event_id: 1, headline_image: "http://logonoid.com/images/linkin-park-logo.png"},
  {name: "James Bay", act_image: "", description: "", event_id: 1, headline_image: "http://resources.socialpromote.co.uk/media/b3775b8a-ad70-4ec9-9378-14a55a7a7730.png"},
  {name: "Deadmau5", act_image: "", description: "", event_id: 1, headline_image: "http://logonoid.com/images/deadmau5-logo.png"},
  {name: "All Time Low", act_image: "", description: "", event_id: 1, headline_image: "http://41.media.tumblr.com/5733c2f14e9f1bf55f4b92725bd21dde/tumblr_mq84w0dYhP1sbc9iwo1_1280.png"},
  {name: "John Bishop", act_image: "", description: "", event_id: 1, headline_image: ""}
])
Act::HABTM_Keywords.create!([
  {act_id: 1, keyword_id: 3},
  {act_id: 1, keyword_id: 2},
  {act_id: 2, keyword_id: 2},
  {act_id: 1, keyword_id: 6},
  {act_id: 9, keyword_id: 4},
  {act_id: 12, keyword_id: 4},
  {act_id: 13, keyword_id: 4},
  {act_id: 17, keyword_id: 2},
  {act_id: 17, keyword_id: 5},
  {act_id: 10, keyword_id: 2},
  {act_id: 2, keyword_id: 5},
  {act_id: 11, keyword_id: 2},
  {act_id: 11, keyword_id: 3},
  {act_id: 11, keyword_id: 7}
])
Booking.create!([
  {user_id: 1, timeslot_id: 6},
  {user_id: 1, timeslot_id: 15},
  {user_id: 1, timeslot_id: 19},
  {user_id: 2, timeslot_id: 17},
  {user_id: 2, timeslot_id: 3},
  {user_id: 1, timeslot_id: 3},
  {user_id: 1, timeslot_id: 32},
  {user_id: 1, timeslot_id: 28},
  {user_id: 1, timeslot_id: 31},
  {user_id: 1, timeslot_id: 26},
  {user_id: 2, timeslot_id: 20},
  {user_id: 1, timeslot_id: 40},
  {user_id: 1, timeslot_id: 29},
  {user_id: 1, timeslot_id: 41}
])
Event.create!([
  {name: "Borders Festival", location: "Galashiels, Scottish Borders", start_date: "2016-06-10", end_date: "2016-06-12", description: "The biggest music festival in the Borders area!"}
])
Keyword.create!([
  {name: "rock"},
  {name: "metal"},
  {name: "comedy"},
  {name: "pop-punk"},
  {name: "1980s"},
  {name: "rap"}
])
Keyword::HABTM_Acts.create!([
  {act_id: 1, keyword_id: 3},
  {act_id: 1, keyword_id: 2},
  {act_id: 2, keyword_id: 2},
  {act_id: 1, keyword_id: 6},
  {act_id: 9, keyword_id: 4},
  {act_id: 12, keyword_id: 4},
  {act_id: 13, keyword_id: 4},
  {act_id: 17, keyword_id: 2},
  {act_id: 17, keyword_id: 5},
  {act_id: 10, keyword_id: 2},
  {act_id: 2, keyword_id: 5},
  {act_id: 11, keyword_id: 2},
  {act_id: 11, keyword_id: 3},
  {act_id: 11, keyword_id: 7}
])
Timeslot.create!([
  {venue_id: 1, act_id: 2, start_time: "2016-06-12 15:00:00", end_time: "2016-06-12 16:00:00", capacity: nil},
  {venue_id: 2, act_id: 5, start_time: "2016-06-12 21:30:00", end_time: "2016-06-12 22:30:00", capacity: nil},
  {venue_id: 5, act_id: 1, start_time: "2016-06-12 21:30:00", end_time: "2016-06-12 22:30:00", capacity: nil},
  {venue_id: 6, act_id: 5, start_time: "2016-06-11 13:30:00", end_time: "2016-06-11 14:30:00", capacity: 1},
  {venue_id: 2, act_id: 6, start_time: "2016-06-10 12:00:00", end_time: "2016-06-10 13:00:00", capacity: nil},
  {venue_id: 1, act_id: 3, start_time: "2016-06-10 13:00:00", end_time: "2016-06-10 14:00:00", capacity: nil},
  {venue_id: 4, act_id: 9, start_time: "2016-06-10 16:00:00", end_time: "2016-06-10 17:00:00", capacity: nil},
  {venue_id: 1, act_id: 10, start_time: "2016-06-11 22:00:00", end_time: "2016-06-11 23:30:00", capacity: nil},
  {venue_id: 1, act_id: 11, start_time: "2016-06-12 22:00:00", end_time: "2016-06-12 23:30:00", capacity: nil},
  {venue_id: 4, act_id: 12, start_time: "2016-06-11 19:30:00", end_time: "2016-06-11 20:30:00", capacity: nil},
  {venue_id: 4, act_id: 13, start_time: "2016-06-12 19:30:00", end_time: "2016-06-12 20:30:00", capacity: nil},
  {venue_id: 2, act_id: 2, start_time: "2016-06-11 16:00:00", end_time: "2016-06-11 17:00:00", capacity: nil},
  {venue_id: 1, act_id: 6, start_time: "2016-06-11 19:00:00", end_time: "2016-06-11 20:00:00", capacity: nil},
  {venue_id: 1, act_id: 15, start_time: "2016-06-11 20:05:00", end_time: "2016-06-11 21:00:00", capacity: nil},
  {venue_id: 1, act_id: 16, start_time: "2016-06-12 21:00:00", end_time: "2016-06-12 21:55:00", capacity: nil},
  {venue_id: 1, act_id: 14, start_time: "2016-06-10 20:00:00", end_time: "2016-06-10 21:00:00", capacity: nil},
  {venue_id: 1, act_id: 1, start_time: "2016-06-10 22:00:00", end_time: "2016-06-10 23:30:00", capacity: nil},
  {venue_id: 5, act_id: 16, start_time: "2016-06-10 14:00:00", end_time: "2016-06-10 16:00:00", capacity: nil},
  {venue_id: 2, act_id: 17, start_time: "2016-06-11 21:00:00", end_time: "2016-06-11 22:00:00", capacity: nil},
  {venue_id: 4, act_id: 18, start_time: "2016-06-10 18:00:00", end_time: "2016-06-10 19:00:00", capacity: nil}
])
Venue.create!([
  {name: "Main Stage", location: "Field 2", venue_image: "http://www.smash-uk.com/frf13/stages/images/stage-img4-1.jpg", description: "The biggest stage of the festival, where the headline acts play.", event_id: 1},
  {name: "Alternative Stage", location: "Field 3", venue_image: "", description: "The home of upcoming artists, presented by your favourite BBC radio hosts.", event_id: 1},
  {name: "Comedy Tent", location: "Field 2", venue_image: "", description: "Have a chuckle at some comedy acts here.", event_id: 1},
  {name: "Secret Stage", location: "", venue_image: "", description: "Secret gigs held here.", event_id: 1},
  {name: "Signing Tent", location: "", venue_image: "", description: "Make a booking for the signing tent to meet your favourite bands and get their autographs. Be warned, places may be limited!", event_id: 1}
])
