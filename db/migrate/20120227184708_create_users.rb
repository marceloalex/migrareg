class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :dni
      t.string :email
      t.date :datebirth
      t.string :phone
      t.references :profile
      t.string :username
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
    add_index :users, :profile_id
  end
end
