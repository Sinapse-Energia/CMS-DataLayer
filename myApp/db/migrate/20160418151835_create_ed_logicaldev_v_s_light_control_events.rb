class CreateEdLogicaldevVSLightControlEvents < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_v_s_light_control_events do |t|
      t.references :ed_logicaldev, index: {:name => "index_ed_logicaldev_light_control_event_id"}
      t.references :v_s_light_control_event, index: {:name => "index_light_control_event_ed_logicaldev_id"}

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_v_s_light_control_events, :ed_logicaldevs
    add_foreign_key :ed_logicaldev_v_s_light_control_events, :v_s_light_control_events
  end
end
