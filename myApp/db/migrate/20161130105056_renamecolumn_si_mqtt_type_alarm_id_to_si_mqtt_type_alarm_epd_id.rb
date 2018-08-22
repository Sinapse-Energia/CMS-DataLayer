class RenamecolumnSiMqttTypeAlarmIdToSiMqttTypeAlarmEpdId < ActiveRecord::Migration
  def change
    rename_column :si_mqtt_alarm_epds, :si_mqtt_type_alarm_id, :si_mqtt_type_alarm_epd_id
  end
end
