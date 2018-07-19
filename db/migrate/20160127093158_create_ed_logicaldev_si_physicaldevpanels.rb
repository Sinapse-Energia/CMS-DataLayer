class CreateEdLogicaldevSiPhysicaldevpanels < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_si_physicaldevpanels do |t|
      t.references :ed_logicaldev, index: true
      t.references :si_physicaldevpanel, index: {:name => "index_ed_logicaldev_si_physicaldevpanel_id"}

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_si_physicaldevpanels, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :ed_logicaldev_si_physicaldevpanels, :si_physicaldevpanels, on_delete: :cascade
  end
end
