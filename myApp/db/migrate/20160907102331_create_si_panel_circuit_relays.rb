class CreateSiPanelCircuitRelays < ActiveRecord::Migration
  def change
    create_table :si_panel_circuit_relays do |t|
      t.references :si_physicaldevpanel, index: true
      t.references :si_physicaldevcircuit, index: true
      t.text :relay
      t.integer :status

      t.timestamps null: false
    end
    add_foreign_key :si_panel_circuit_relays, :si_physicaldevpanels, on_delete: :cascade
    add_foreign_key :si_panel_circuit_relays, :si_physicaldevcircuits, on_delete: :cascade
  end
end
