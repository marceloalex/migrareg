class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.references :management
      t.datetime :day
      t.references :user
      t.datetime :hour
      t.string :name
      t.string :phone

      t.timestamps
    end
    add_index :citations, :management_id
    add_index :citations, :user_id
  end
end
