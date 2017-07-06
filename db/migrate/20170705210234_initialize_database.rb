
class InitializeDatabase < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :fname
  		t.string :lname
  		t.string :password
  		t.string :email
  	end
    # create_table :years do |t|
    # t.integer :year
    # end
    # create_table :months do |t|
    # t.string :month
    # end
    create_table :posts do |t|
    t.string :title
    t.text :content
    t.integer :user_id
    t.timestamps
    end
  end
 end
