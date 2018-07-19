class CreateEdLogicaldevVSDataPkgTransferEvents < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_v_s_data_pkg_transfer_events do |t|
      t.references :ed_logicaldev, index: {:name => "index_ed_logicaldev_data_pkg_transfer_event_id"}
      t.references :v_s_data_pkg_transfer_event, index: {:name => "index_data_pkg_transfer_event_ed_logicaldev_id"}

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_v_s_data_pkg_transfer_events, :ed_logicaldevs
    add_foreign_key :ed_logicaldev_v_s_data_pkg_transfer_events, :v_s_data_pkg_transfer_events
  end
end
