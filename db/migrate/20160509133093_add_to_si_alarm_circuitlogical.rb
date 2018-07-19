class AddToSiAlarmCircuitlogical < ActiveRecord::Migration
  def change
	add_column :si_alarm_circuit_si_physicaldevcircuits, :is_group, :boolean
	add_column :si_alarm_circuit_si_physicaldevcircuits, :is_single, :boolean
	add_reference :si_alarm_circuit_si_physicaldevcircuits, :eg_group, index: true
	
 
  add_foreign_key :si_alarm_circuit_si_physicaldevcircuits, :eg_groups  
 
    
  end
end
