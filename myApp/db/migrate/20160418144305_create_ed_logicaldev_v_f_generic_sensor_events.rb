class CreateEdLogicaldevVFGenericSensorEvents < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_v_f_generic_sensor_events do |t|
      t.references :ed_logicaldev, index: {:name => "index_ed_logicaldev_generic_sensor_event_id"}
      t.references :v_f_generic_sensor_event, index: {:name => "index_generic_sensor_event_ed_logicaldev_id"}

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_v_f_generic_sensor_events, :ed_logicaldevs
    add_foreign_key :ed_logicaldev_v_f_generic_sensor_events, :v_f_generic_sensor_events
  end
end
