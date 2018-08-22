class CreateEdLogicaldevSiPhysicaldevcircuits < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_si_physicaldevcircuits do |t|
      t.references :ed_logicaldev, index: true
      t.references :si_physicaldevcircuit, index: {:name => "index_ed_logicaldev_si_physicaldevcircuit_id"}

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_si_physicaldevcircuits, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :ed_logicaldev_si_physicaldevcircuits, :si_physicaldevcircuits, on_delete: :cascade
  end
end
