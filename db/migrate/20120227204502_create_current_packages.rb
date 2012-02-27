class CreateCurrentPackages < ActiveRecord::Migration
  def change
    create_table :current_packages do |t|
      t.string :name
      t.string :current_line
      t.string :current_speedy
      t.string :current_wire

      t.timestamps
    end
  end
end
