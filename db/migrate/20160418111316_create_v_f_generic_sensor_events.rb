class CreateVFGenericSensorEvents < ActiveRecord::Migration
  def change
    create_table :v_f_generic_sensor_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
