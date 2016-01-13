User.create!([
  {email: "beth@email.com", encrypted_password: "$2a$10$OVy7xDkqsHZlXJmvVatPo.n5BzeJzuQOA1xVSwp1g99eNAtqBX15C", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 18, current_sign_in_at: "2016-01-13 14:19:40", last_sign_in_at: "2016-01-13 14:04:53", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Beth", role: "admin", user_image: "12250089_10153868876348319_130130965663377483_n.jpg"},
  {email: "gary@email.com", encrypted_password: "$2a$10$KZtcDyWa1sspzOm0gsmLHuyMB2g8eqd/sHlT0D8Jk4TdZkFWo07Dy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 12, current_sign_in_at: "2016-01-13 14:13:33", last_sign_in_at: "2016-01-13 13:51:20", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Gary", role: nil, user_image: "gary.jpg"},
  {email: "arthur@email.com", encrypted_password: "$2a$10$2dykpkKXFZ.1rrq/b8zPneeuR3IqmFd7HY/MXWPkLlSCdw3/eL98a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-13 13:30:18", last_sign_in_at: "2016-01-13 13:30:18", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Arthur", role: nil, user_image: "arthurs-seat.jpg"}
])
Act.create!([
  {name: "Metallica", act_image: "http://images1.mtv.com/uri/mgid:file:docroot:vh1.com:/sitewide/flipbooks/img/news/10_hottest_albums_september_08/05_81091189.jpg?enlarge=false&matte=true&matteColor=black&quality=0.85", description: "Metallica is an American heavy metal band formed in Los Angeles, California. Metallica was formed in 1981 when vocalist/guitarist James Hetfield responded to an advertisement posted by drummer Lars Ulrich in a local newspaper. The band's current line-up comprises founding members Hetfield and Ulrich, longtime lead guitarist Kirk Hammett and bassist Robert Trujillo.\r\n\r\nIn 2012, Metallica formed the independent record label Blackened Recordings and took full ownership of its albums and videos. As of 2015, the band is in production of its tenth studio album, slated to be released in 2016.\r\n\r\n<a href=\"https://metallica.com/\">Band website</a>", event_id: 1, headline_image: "https://upload.wikimedia.org/wikipedia/commons/b/b7/Metallica_logo.png"},
  {name: "Fall Out Boy", act_image: "http://www.allthetests.com/quiz32/picture/pic_1429281383_13.jpg", description: "Fall Out Boy is an American rock band formed in Wilmette, Illinois, a suburb of Chicago, in 2001. The band consists of vocalist and guitarist Patrick Stump, bassist Pete Wentz, guitarist Joe Trohman, and drummer Andy Hurley. \r\n\r\n**_American Beauty/American Psycho_** debuted at No. 1 on the US Billboard 200 with 192,000 first week sales and 218,000 equivalent album units, becoming Fall Out Boy's third No. 1 album.\r\n\r\n<a href=\"http://www.youtube.com/watch?feature=player_embedded&v=C6MOKXm8x50\r\n\" target=\"_blank\"><img src=\"http://img.youtube.com/vi/C6MOKXm8x50/0.jpg\" \r\nalt=\"Dance, Dance - Fall Out Boy\" width=\"240\" height=\"180\" border=\"10\" /></a> <a href=\"http://www.youtube.com/watch?feature=player_embedded&v=2Lb2BiUC898\r\n\" target=\"_blank\"><img src=\"http://img.youtube.com/vi/2Lb2BiUC898/0.jpg\" \r\nalt=\"Irresistible - Fall Out Boy\" width=\"240\" height=\"180\" border=\"10\" /></a>\r\n\r\n[Band website](http://falloutboy.com/)", event_id: 1, headline_image: "http://40.media.tumblr.com/1e6b6adcb9ad91119c7819f2cf0c11e0/tumblr_n8yqibZqKI1trip1wo6_1280.png"},
  {name: "Green Day", act_image: "", description: "Billie-Joe Armstrong headlines this rock band.", event_id: 1, headline_image: nil},
  {name: "Arctic Monkeys", act_image: "", description: "They're from Leeds?", event_id: 1, headline_image: ""},
  {name: "Paramore", act_image: "", description: "Hayley Williams and co.", event_id: 1, headline_image: "https://40.media.tumblr.com/ff124b881ef02c7fbb0339bd5dfb609a/tumblr_no7q0mykpW1rw0tj5o1_500.png"},
  {name: "Bill Bailey", act_image: "", description: "", event_id: 1, headline_image: nil},
  {name: "Biffy Clyro", act_image: "", description: "", event_id: 1, headline_image: "http://data.whicdn.com/images/127570404/original.png"},
  {name: "Rage Against The Machine", act_image: "", description: "", event_id: 1, headline_image: "https://moshworld.files.wordpress.com/2010/03/lineup_rage.png"},
  {name: "Miranda Hart", act_image: "", description: "", event_id: 1, headline_image: nil},
  {name: "Ross Noble", act_image: "", description: "", event_id: 1, headline_image: nil},
  {name: "Linkin Park", act_image: "", description: "", event_id: 1, headline_image: "http://logonoid.com/images/linkin-park-logo.png"},
  {name: "James Bay", act_image: "", description: "", event_id: 1, headline_image: "http://resources.socialpromote.co.uk/media/b3775b8a-ad70-4ec9-9378-14a55a7a7730.png"},
  {name: "Deadmau5", act_image: "", description: "", event_id: 1, headline_image: "http://logonoid.com/images/deadmau5-logo.png"},
  {name: "All Time Low", act_image: "", description: "", event_id: 1, headline_image: "http://41.media.tumblr.com/5733c2f14e9f1bf55f4b92725bd21dde/tumblr_mq84w0dYhP1sbc9iwo1_1280.png"},
  {name: "John Bishop", act_image: "", description: "", event_id: 1, headline_image: ""},
  {name: "Mayday Parade", act_image: "", description: "", event_id: 1, headline_image: "https://31.media.tumblr.com/b76d5c5fa6e4b1bda35d36516ba0d587/tumblr_mns7lsIY1I1s78xclo1_500.gif"},
  {name: "Blink 182", act_image: "https://a1-images.myspacecdn.com/images03/35/3a658bc9a99244818d32f1daa7381767/300x300.jpg", description: "Blink-182 is an American rock band formed in Poway, a suburb of San Diego, California in 1992. The band currently consists of bassist and vocalist Mark Hoppus, drummer Travis Barker, and guitarist and vocalist Matt Skiba. Blink-182 is considered a key group in the development of pop punk; their combination of pop melodies with fast-paced punk rock featured a more radio-friendly accessibility than prior bands. \r\n\r\n<a href=\"http://www.youtube.com/watch?feature=player_embedded&v=z7hhDINyBP0\r\n\" target=\"_blank\"><img src=\"http://img.youtube.com/vi/z7hhDINyBP0/0.jpg\" \r\nalt=\"The Rock Show - Blink 182\" width=\"240\" height=\"180\" border=\"10\" /></a> <a href=\"http://www.youtube.com/watch?feature=player_embedded&v=4kMZ23T9VHE\r\n\" target=\"_blank\"><img src=\"http://img.youtube.com/vi/4kMZ23T9VHE/0.jpg\" \r\nalt=\"The Rock Show - Blink 182\" width=\"240\" height=\"180\" border=\"10\" /></a>\r\n\r\n[Band website](http://blink182merch.com/)", event_id: 1, headline_image: "http://orig09.deviantart.net/a017/f/2013/148/7/8/tumblr_mnhlxlsgti1rewnnao2_1280_by_megzwills-d66wesd.png"},
  {name: "The Kooks", act_image: "", description: "", event_id: 1, headline_image: "http://logonoid.com/images/the-kooks-logo.png"},
  {name: "Elf Lyons", act_image: "", description: "", event_id: 1, headline_image: ""},
  {name: "Tim Minchin", act_image: "", description: "", event_id: 1, headline_image: ""},
  {name: "Deaf Havana", act_image: "", description: "", event_id: 1, headline_image: "http://static.tumblr.com/aa1cf8601869b922dfe50b874e6e7403/ovievvc/0y3mkyk3f/tumblr_static_deaf-havana-fools-and-worthless-liars-2776.png"},
  {name: "The Gaslight Anthem", act_image: "", description: "", event_id: 1, headline_image: "https://fanart.tv/fanart/music/f208f09e-b5b3-4b06-87cd-f7230fae17e3/hdmusiclogo/gaslight-anthem-the-516768bd847d7.png"},
  {name: "The XX", act_image: "", description: "", event_id: 1, headline_image: ""},
  {name: "Vampire Weekend", act_image: "", description: "", event_id: 1, headline_image: ""}
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
  {act_id: 11, keyword_id: 7},
  {act_id: 18, keyword_id: 4},
  {act_id: 6, keyword_id: 2},
  {act_id: 24, keyword_id: 2},
  {act_id: 20, keyword_id: 2},
  {act_id: 17, keyword_id: 10},
  {act_id: 5, keyword_id: 2},
  {act_id: 5, keyword_id: 10},
  {act_id: 27, keyword_id: 2},
  {act_id: 27, keyword_id: 10},
  {act_id: 27, keyword_id: 11},
  {act_id: 26, keyword_id: 2},
  {act_id: 26, keyword_id: 8},
  {act_id: 26, keyword_id: 10},
  {act_id: 16, keyword_id: 8},
  {act_id: 16, keyword_id: 9},
  {act_id: 16, keyword_id: 10},
  {act_id: 23, keyword_id: 4},
  {act_id: 22, keyword_id: 4},
  {act_id: 2, keyword_id: 10}
])
Booking.create!([
  {user_id: 1, timeslot_id: 6},
  {user_id: 1, timeslot_id: 15},
  {user_id: 2, timeslot_id: 17},
  {user_id: 1, timeslot_id: 32},
  {user_id: 1, timeslot_id: 28},
  {user_id: 1, timeslot_id: 31},
  {user_id: 1, timeslot_id: 26},
  {user_id: 1, timeslot_id: 40},
  {user_id: 1, timeslot_id: 29},
  {user_id: 3, timeslot_id: 40},
  {user_id: 3, timeslot_id: 28},
  {user_id: 1, timeslot_id: 50},
  {user_id: 1, timeslot_id: 52},
  {user_id: 1, timeslot_id: 51},
  {user_id: 1, timeslot_id: 38}
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
  {name: "rap"},
  {name: "dance"},
  {name: "1990s"},
  {name: "2000s"},
  {name: "folk"}
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
  {act_id: 11, keyword_id: 7},
  {act_id: 18, keyword_id: 4},
  {act_id: 6, keyword_id: 2},
  {act_id: 24, keyword_id: 2},
  {act_id: 20, keyword_id: 2},
  {act_id: 17, keyword_id: 10},
  {act_id: 5, keyword_id: 2},
  {act_id: 5, keyword_id: 10},
  {act_id: 27, keyword_id: 2},
  {act_id: 27, keyword_id: 10},
  {act_id: 27, keyword_id: 11},
  {act_id: 26, keyword_id: 2},
  {act_id: 26, keyword_id: 8},
  {act_id: 26, keyword_id: 10},
  {act_id: 16, keyword_id: 8},
  {act_id: 16, keyword_id: 9},
  {act_id: 16, keyword_id: 10},
  {act_id: 23, keyword_id: 4},
  {act_id: 22, keyword_id: 4},
  {act_id: 2, keyword_id: 10}
])
Timeslot.create!([
  {venue_id: 5, act_id: 24, start_time: "2016-06-12 21:30:00", end_time: "2016-06-12 22:30:00", capacity: nil},
  {venue_id: 5, act_id: 25, start_time: "2016-06-11 13:30:00", end_time: "2016-06-11 14:30:00", capacity: nil},
  {venue_id: 1, act_id: 3, start_time: "2016-06-10 13:00:00", end_time: "2016-06-10 14:00:00", capacity: nil},
  {venue_id: 4, act_id: 9, start_time: "2016-06-10 20:00:00", end_time: "2016-06-10 21:00:00", capacity: nil},
  {venue_id: 1, act_id: 2, start_time: "2016-06-11 22:00:00", end_time: "2016-06-11 23:30:00", capacity: nil},
  {venue_id: 1, act_id: 20, start_time: "2016-06-12 22:00:00", end_time: "2016-06-12 23:30:00", capacity: nil},
  {venue_id: 4, act_id: 12, start_time: "2016-06-11 19:30:00", end_time: "2016-06-11 20:30:00", capacity: nil},
  {venue_id: 4, act_id: 13, start_time: "2016-06-12 19:30:00", end_time: "2016-06-12 20:30:00", capacity: nil},
  {venue_id: 2, act_id: 21, start_time: "2016-06-10 21:00:00", end_time: "2016-06-10 22:00:00", capacity: nil},
  {venue_id: 1, act_id: 6, start_time: "2016-06-11 16:00:00", end_time: "2016-06-11 17:00:00", capacity: nil},
  {venue_id: 1, act_id: 10, start_time: "2016-06-12 21:00:00", end_time: "2016-06-12 21:55:00", capacity: nil},
  {venue_id: 1, act_id: 14, start_time: "2016-06-10 20:00:00", end_time: "2016-06-10 21:00:00", capacity: nil},
  {venue_id: 1, act_id: 1, start_time: "2016-06-10 22:00:00", end_time: "2016-06-10 23:30:00", capacity: nil},
  {venue_id: 5, act_id: 16, start_time: "2016-06-10 14:00:00", end_time: "2016-06-10 16:00:00", capacity: nil},
  {venue_id: 2, act_id: 17, start_time: "2016-06-11 21:00:00", end_time: "2016-06-11 22:00:00", capacity: nil},
  {venue_id: 4, act_id: 18, start_time: "2016-06-10 18:00:00", end_time: "2016-06-10 19:00:00", capacity: nil},
  {venue_id: 1, act_id: 5, start_time: "2016-06-12 16:00:00", end_time: "2016-06-12 17:00:00", capacity: nil},
  {venue_id: 2, act_id: 19, start_time: "2016-06-12 21:05:00", end_time: "2016-06-12 22:00:00", capacity: nil},
  {venue_id: 1, act_id: 15, start_time: "2016-06-11 15:00:00", end_time: "2016-06-11 16:00:00", capacity: nil},
  {venue_id: 4, act_id: 22, start_time: "2016-06-11 14:00:00", end_time: "2016-06-11 15:00:00", capacity: nil},
  {venue_id: 4, act_id: 23, start_time: "2016-06-12 21:00:00", end_time: "2016-06-12 22:00:00", capacity: nil},
  {venue_id: 6, act_id: 13, start_time: "2016-06-12 14:00:00", end_time: "2016-06-12 15:00:00", capacity: 1},
  {venue_id: 6, act_id: 9, start_time: "2016-06-10 14:00:00", end_time: "2016-06-10 15:00:00", capacity: 1},
  {venue_id: 6, act_id: 5, start_time: "2016-06-11 14:00:00", end_time: "2016-06-11 15:00:00", capacity: 1},
  {venue_id: 2, act_id: 26, start_time: "2016-06-10 18:00:00", end_time: "2016-06-10 19:00:00", capacity: nil},
  {venue_id: 2, act_id: 27, start_time: "2016-06-11 18:00:00", end_time: "2016-06-11 19:00:00", capacity: nil}
])
Venue.create!([
  {name: "Main Stage", location: "Field 2", venue_image: "http://www.smash-uk.com/frf13/stages/images/stage-img4-1.jpg", description: "The biggest stage of the festival, where the headline acts play.", event_id: 1},
  {name: "Alternative Stage", location: "Field 3", venue_image: "", description: "The home of upcoming artists, presented by your favourite BBC radio hosts.", event_id: 1},
  {name: "Comedy Tent", location: "Field 2", venue_image: "", description: "Have a chuckle at some comedy acts here.", event_id: 1},
  {name: "Secret Stage", location: "", venue_image: "", description: "Secret gigs held here.", event_id: 1},
  {name: "Signing Tent", location: "", venue_image: "", description: "Make a booking for the signing tent to meet your favourite bands and get their autographs. Be warned, places may be limited!", event_id: 1}
])
