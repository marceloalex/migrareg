class CreateTemporalManagements < ActiveRecord::Migration
  def change
    create_table :temporal_managements do |t|
      t.references :management
      t.datetime :date_call
      t.references :management_status
      t.datetime :hour_call
      t.references :number_call

      t.timestamps
    end
    add_index :temporal_managements, :management_id
    add_index :temporal_managements, :management_status_id
    add_index :temporal_managements, :number_call_id
  end
end
