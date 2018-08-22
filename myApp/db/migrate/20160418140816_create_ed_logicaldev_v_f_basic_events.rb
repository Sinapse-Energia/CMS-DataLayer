class CreateEdLogicaldevVFBasicEvents < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_v_f_basic_events do |t|
      t.references :ed_logicaldev, index: true
      t.references :v_f_basic_event, index: true

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_v_f_basic_events, :ed_logicaldevs
    add_foreign_key :ed_logicaldev_v_f_basic_events, :v_f_basic_events
  end
end
