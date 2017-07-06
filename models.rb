class User<ActiveRecord::Base
  # enum :status => [:active, :pending, :deleted]
  has_many :posts
  def full_name
    "#{fname} #{lname}".strip
  end
  # def all
  #   super.where.all.not( status: :deleted)
  # end
  # def posts
  #   super.where(is_published: true)
  # end
end

class Post<ActiveRecord::Base
  belongs_to :user
  # belongs_to :month
  # belongs_to :year
end


# class Year<ActiveRecord::Base
#   # has_many :months
#   has_many :posts
# end

# class Month<ActiveRecord::Base
#   has_many :posts
#   # belongs_to :year
# end


