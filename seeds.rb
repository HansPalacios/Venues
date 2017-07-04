myUsers = [
	{username: 'Dennis', password: 'california', email: 'dennis@california.net'}, 
	{:username => 'Logan', :password => 'Baker', :email => 'logan@flour.com'},
	{username: 'Nick', password: 'Fehlinger', email: 'bearded@hipster.com'}
	]

myUsers.each do |user|
	User.create(user)
end	
