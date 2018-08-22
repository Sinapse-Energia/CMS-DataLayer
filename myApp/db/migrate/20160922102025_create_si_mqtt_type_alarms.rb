class CreateSiMqttTypeAlarms < ActiveRecord::Migration
  def change
    create_table :si_mqtt_type_alarms do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
