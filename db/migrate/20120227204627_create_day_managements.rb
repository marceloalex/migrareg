class CreateDayManagements < ActiveRecord::Migration
  def change
    create_table :day_managements do |t|
      t.datetime :date
      t.references :user
      t.integer :number_management

      t.timestamps
    end
    add_index :day_managements, :user_id
  end
end
