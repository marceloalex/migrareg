class CreateGeolocs < ActiveRecord::Migration
  def change
    create_table :geolocs do |t|
      t.string :code_geoloc
      t.string :code_departament
      t.string :code_province
      t.string :code_district
      t.string :departament
      t.string :province
      t.string :district

      t.timestamps
    end
  end
end
