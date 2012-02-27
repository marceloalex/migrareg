class CreateTypePhones < ActiveRecord::Migration
  def change
    create_table :type_phones do |t|
      t.string :name

      t.timestamps
    end
  end
end
