class CreateTypeCustomers < ActiveRecord::Migration
  def change
    create_table :type_customers do |t|
      t.string :name

      t.timestamps
    end
  end
end
