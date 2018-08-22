class CreateAFlampmonitorHists < ActiveRecord::Migration
  def change
    create_table :a_flampmonitor_hists do |t|
      t.references :ed_logicaldev, index: true
      t.references :adesc_flampmonitor, index: true
      t.text :value
      t.datetime :time_stamp
      t.text :type_count

      t.timestamps null: false
    end
    add_foreign_key :a_flampmonitor_hists, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :a_flampmonitor_hists, :adesc_flampmonitors
  end
end
