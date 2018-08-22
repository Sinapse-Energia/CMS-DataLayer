class CreateSiMqttAlarmEpds < ActiveRecord::Migration
  def change
    create_table :si_mqtt_alarm_epds do |t|
      t.text :logical_address
      t.references :si_mqtt_type_alarm, index: true
      t.text :value
      t.datetime :time_stamp
      t.timestamps null: false
    end
    add_foreign_key :si_mqtt_alarm_epds, :si_mqtt_type_alarms
  end
end
