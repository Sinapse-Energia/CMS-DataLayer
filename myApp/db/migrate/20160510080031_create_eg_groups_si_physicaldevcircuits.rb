class CreateEgGroupsSiPhysicaldevcircuits < ActiveRecord::Migration
  def change
    create_table :eg_groups_si_physicaldevcircuits do |t|
      t.references :eg_group, index: true
      t.references :si_physicaldevcircuit, index: {:name => "index_si_physicaldevcircuit_eg_groups_id"}

      t.timestamps null: false
    end
    add_foreign_key :eg_groups_si_physicaldevcircuits, :eg_groups
    add_foreign_key :eg_groups_si_physicaldevcircuits, :si_physicaldevcircuits, on_delete: :cascade
  end
end
