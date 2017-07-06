class User<ActiveRecord::Base
  has_many :posts
end

# class Year<ActiveRecord::Base
#   # has_many :months
#   has_many :posts
# end

# class Month<ActiveRecord::Base
#   has_many :posts
#   # belongs_to :year
# end

class Post<ActiveRecord::Base
  belongs_to :user
  # belongs_to :month
  # belongs_to :year
end

