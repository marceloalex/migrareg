class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :clasification
      t.string :detail
      t.string :response
      t.string :code_offer
      t.string :line_destiny
      t.string :speedy_destiny
      t.string :wire_destiny
      t.string :auxiliar

      t.timestamps
    end
  end
end
