class AddcolumnSialarmpanelSiMqttAlarmAps < ActiveRecord::Migration
  def change
    add_column :si_alarm_panels, :si_mqtt_type_alarm_ap_id, :integer
   
    add_index :si_alarm_panels, :si_mqtt_type_alarm_ap_id
    
     add_foreign_key :si_alarm_panels, :si_mqtt_type_alarm_aps
  end
end
