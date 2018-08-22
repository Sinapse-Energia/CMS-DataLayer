class CreateEdLogicaldevSiPhysicaldevgateways < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_si_physicaldevgateways do |t|
      t.references :ed_logicaldev, index: true
      t.references :si_physicaldevgateway, index: {:name => "index_ed_logicaldev_si_physicaldevgateway_id"}

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_si_physicaldevgateways, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :ed_logicaldev_si_physicaldevgateways, :si_physicaldevgateways, on_delete: :cascade
  end
end
