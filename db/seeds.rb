User.create ([
	{username: 'Dennis', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',fname: 'Dennis', lname: 'California', password: 'california', email: 'dennis@california.net'}, 
	{username: 'Logan', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',fname: 'Logan', lname: 'Baker', password: 'Baker', email: 'logan@flour.com'},
	{username: 'Nick', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',fname: 'Nick', lname: 'Fehlinger', password: 'Fehlinger', email: 'bearded@hipster.com'}
	])
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
