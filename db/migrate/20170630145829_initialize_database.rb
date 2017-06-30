class InitializeDatabase < ActiveRecord::Migration[5.1]
  def change
  	create_table :users do |t|
  		t.string :username
  		t.string :password
  		t.string :email
  	end
  	create_table :emails do |t|
  		t.string :subject
  		t.text :content
  		t.timestamps
  	end
  end
 end