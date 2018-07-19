class CreateSiPhysicaldevlampSiPhysicaldevgateways < ActiveRecord::Migration
  def change
    create_table :si_physicaldevlamp_si_physicaldevgateways do |t|
      t.references :si_physicaldevlamp, index: {:name => "index_si_physicaldevlamp_id_si_physicaldevgateway_id"}
      t.references :si_physicaldevgateway, index: {:name => "index_si_physicaldevgateway_id_si_physicaldevlamp_id"}

      t.timestamps null: false
    end
    add_foreign_key :si_physicaldevlamp_si_physicaldevgateways, :si_physicaldevlamps, on_delete: :cascade
    add_foreign_key :si_physicaldevlamp_si_physicaldevgateways, :si_physicaldevgateways, on_delete: :cascade
  end
end
