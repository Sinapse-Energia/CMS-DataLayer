class RenametableSiMqttTypeAlarmToSiMqttTypeAlarmAp < ActiveRecord::Migration
  def change
    rename_table :si_mqtt_type_alarms, :si_mqtt_type_alarm_epds
  end
end
