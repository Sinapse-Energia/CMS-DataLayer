class CreateLSensors < ActiveRecord::Migration
  def change
    create_table :l_sensors do |t|
      t.text :sensor_address

      t.timestamps null: false
    end
  end
end
