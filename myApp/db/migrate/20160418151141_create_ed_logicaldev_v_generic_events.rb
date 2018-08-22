class CreateEdLogicaldevVGenericEvents < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_v_generic_events do |t|
      t.references :ed_logicaldev, index: true
      t.references :v_generic_event, index: true

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_v_generic_events, :ed_logicaldevs
    add_foreign_key :ed_logicaldev_v_generic_events, :v_generic_events
  end
end
