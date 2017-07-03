class User <ActiveRecord::Base
	has_many :emails
end

class Email <ActiveRecord::Base
	belongs_to :user
end