myUsers = [
	{username: 'Dennis', password: 'california', email: 'dennis@california.net'}, 
	{:username => 'Logan', :password => 'Julia', :email => 'secret@dmirer.com'},
	{username: 'Nick', password: 'Fehlinger', email: 'bearded@hipster.com'}
	]

myUsers.each do |user|
	User.create(user)
end	
