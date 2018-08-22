class CreateSiAlarmCircuitSiPhysicaldevcircuits < ActiveRecord::Migration
  def change
    create_table :si_alarm_circuit_si_physicaldevcircuits do |t|
      t.references :si_alarm_circuit,  index: {:name => "index_si_alarm_circuit_si_physicaldevcircuit_id"}
      t.references :si_physicaldevcircuit, index: {:name => "index_si_physicaldevcircuit_si_alarm_circuit_id"}
      t.timestamps null: false
    end
    add_foreign_key :si_alarm_circuit_si_physicaldevcircuits, :si_alarm_circuits, on_delete: :cascade
    add_foreign_key :si_alarm_circuit_si_physicaldevcircuits, :si_physicaldevcircuits, on_delete: :cascade
  end
end
