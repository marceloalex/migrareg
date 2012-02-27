class CreateTypeAddresses < ActiveRecord::Migration
  def change
    create_table :type_addresses do |t|
      t.string :name

      t.timestamps
    end
  end
end
