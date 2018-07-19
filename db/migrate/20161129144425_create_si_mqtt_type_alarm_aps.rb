class CreateSiMqttTypeAlarmAps < ActiveRecord::Migration
  def change
    create_table :si_mqtt_type_alarm_aps do |t|
      t.text :type_a
      t.text :subtype_a

      t.timestamps null: false
    end
  end
end
