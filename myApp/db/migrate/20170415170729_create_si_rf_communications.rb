class CreateSiRfCommunications < ActiveRecord::Migration
  def change
    create_table :si_rf_communications do |t|
      t.references :ed_logicaldev , index: true
      t.integer :historical_valid
      t.integer :historical_not_valid
      t.integer :last_day_valid
      t.integer :last_day_not_valid
      t.integer :last_x_valid
      t.integer :last_x_not_valid
      t.integer :status
      t.boolean :repeater

      t.timestamps null: false
    end
  end
end
