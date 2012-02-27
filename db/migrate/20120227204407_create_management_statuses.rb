class CreateManagementStatuses < ActiveRecord::Migration
  def change
    create_table :management_statuses do |t|
      t.string :type_response
      t.string :response
      t.string :detail_response
      t.string :observation
      t.string :quailification
      t.string :contact
      t.string :code_telephony
      t.string :code_motive
      t.boolean :status

      t.timestamps
    end
  end
end
