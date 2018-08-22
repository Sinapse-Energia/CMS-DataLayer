class CreateNewTestModels < ActiveRecord::Migration
  def change
    create_table :new_test_models do |t|
      t.integer :a_flampmonitor_hist_id
      t.integer :ed_logicaldev_id
      t.integer :adesc_flampmonitor_id
      t.integer :si_physicaldevlamp_id
      t.text :value
      t.timestamp :time_stamp
      t.text :type_count

      t.timestamps null: false
    end
  end
end
