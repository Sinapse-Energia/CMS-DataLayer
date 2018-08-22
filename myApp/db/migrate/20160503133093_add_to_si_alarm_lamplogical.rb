class AddToSiAlarmLamplogical < ActiveRecord::Migration
  def change
	add_column :si_alarm_lamp_ed_logicaldevs, :is_group, :boolean
	add_column :si_alarm_lamp_ed_logicaldevs, :is_single, :boolean
	add_reference :si_alarm_lamp_ed_logicaldevs, :eg_group, index: true
	
 
  add_foreign_key :si_alarm_lamp_ed_logicaldevs, :eg_groups  
 
    
  end
end
