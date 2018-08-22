class CreateEdLogicaldevVFElectricalMeterEvents < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_v_f_electrical_meter_events do |t|
      t.references :ed_logicaldev, index: {:name => "index_ed_logicaldev_electrical_meter_event_id"}
      t.references :v_f_electrical_meter_event, index: {:name => "index_electrical_meter_event_ed_logicaldev_id"}


      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_v_f_electrical_meter_events, :ed_logicaldevs
    add_foreign_key :ed_logicaldev_v_f_electrical_meter_events, :v_f_electrical_meter_events
  end
end
