class CreateSiMqttAlarmAps < ActiveRecord::Migration
  def change
    create_table :si_mqtt_alarm_aps do |t|
      t.text :logical_address
      t.references :si_mqtt_type_alarm_ap, index: true
      t.text :value
      t.datetime :time_stamp

      t.timestamps null: false
    end
    add_foreign_key :si_mqtt_alarm_aps, :si_mqtt_type_alarm_aps
  end
end
