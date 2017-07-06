User.create ([
	{username: 'Dennis', fname: 'Dennis', lname: 'California', password: 'california', email: 'dennis@california.net'}, 
	{username: 'Logan', fname: 'Logan', lname: 'Baker', password: 'Baker', email: 'logan@flour.com'},
	{username: 'Nick', fname: 'Nick', lname: 'Fehlinger', password: 'Fehlinger', email: 'bearded@hipster.com'}
	])
# myYears = [
# 	{ id: "2017" year: "2017"},
# 	{ id: "2018" year: "2018"},
# 	{ id: "2019" year: "2019"},
# 	{ id: "2020" year: "2020"},
# 	{ id: "2021" year: "2021"}
# ]

# myMonths = [
# 	{ month: "January"},
# 	{ month: "February"},
# 	{ month: "March"},
# 	{ month: "April"},
# 	{ month: "May"},
# 	{ month: "June"}
# 	{ month: "July"},
# 	{ month: "August"},
# 	{ month: "September"},
# 	{ month: "October"},
# 	{ month: "November"},
# 	{ month: "December"}
# ]
	Post.create ([
    {title: "House of Yes", content: "Funky venue showcasing dance, circus, theater & cabaret performances in a former ice warehouse.", user_id:1},
    {title: "1oak", content: "Great music, very expensive drinks with built in gratuity.", user_id:2},
    {title: "ibiza", content: "Edm music, nice club, good drinks but staff is very rude and can ruin your night", user_id:3},
    {title: "4040", content: "Very dark inside but fancy, Supper loud hip hop. the bar gets very crouded, which.", user_id:2},
    {title: "McDonalds", content: "everybody's club, even homeless people come to this club. the food is hella american and they have the largets drink portions..", user_id:3},
    {title: "Rumpus Room", content: "If you like to rumpus,Cozy, hip nightspot with eclectic, vintage styling featuring diverse dance music & cocktails..", user_id:1},
    {title: "cielo", content: "Big-name DJs and a dynamic sound system keep the dance floor pumping at this Meatpacking disco.", user_id:3},
    {title: "Lavo", content: "Upscale, industrial-chic Italian eatery with a downstairs nightclub featuring DJs & bottle service.", user_id:1},
    {title: "Pyramid", content: "Funky venue showcasing dance, circus, theater & cabaret performances in a former ice warehouse.", user_id:2},
    {title: "rose bar", content: "Funky venue showcasing dance, circus, theater & cabaret performances in a former ice warehouse.", user_id:3},
    {title: "Jimmys", content: "Funky venue showcasing dance, circus, theater & cabaret performances in a former ice warehouse.", user_id:1},
])

# # Jump
# # Mark as read (esc)
# # Open in new window More actions
# # ]

# myUsers.each do |user|
# 	User.create(user)
# end	

# # myYears.each do |year|
# # 	Year.create(year)
# # end

# # myMonths.each do |month|
# # 	Month.create(month)
# # end

# myPost.each do |post|
# 	Post.create(post)
# end