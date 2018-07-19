class CreateEdLogicaldevSiPhysicaldevlamps < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_si_physicaldevlamps do |t|
      t.references :ed_logicaldev, index: true
      t.references :si_physicaldevlamp, index: {:name => "index_ed_logicaldev_si_physicaldevlamp_id"}

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_si_physicaldevlamps, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :ed_logicaldev_si_physicaldevlamps, :si_physicaldevlamps, on_delete: :cascade
  end
end
