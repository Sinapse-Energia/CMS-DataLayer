class CreateVFLightSensorEvents < ActiveRecord::Migration
  def change
    create_table :v_f_light_sensor_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
