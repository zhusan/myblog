class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :hashed_password
      t.string :salt
      t.string :name

      t.timestamps
    end
    User.create(:login => "zhusan", :password => "3199333", :name => "zhusan")
  end
end
