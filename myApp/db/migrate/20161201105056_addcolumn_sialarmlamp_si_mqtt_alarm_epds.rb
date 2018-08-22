class AddcolumnSialarmlampSiMqttAlarmEpds < ActiveRecord::Migration
  def change
    add_column :si_alarm_lamps, :si_mqtt_type_alarm_epd_id, :integer
    
    add_index :si_alarm_lamps, :si_mqtt_type_alarm_epd_id
    add_foreign_key :si_alarm_lamps, :si_mqtt_type_alarm_epds
  end
end
