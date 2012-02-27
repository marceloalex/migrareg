class CreateNumberCalls < ActiveRecord::Migration
  def change
    create_table :number_calls do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
