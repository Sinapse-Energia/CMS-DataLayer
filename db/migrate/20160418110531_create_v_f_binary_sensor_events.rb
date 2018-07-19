class CreateVFBinarySensorEvents < ActiveRecord::Migration
  def change
    create_table :v_f_binary_sensor_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
