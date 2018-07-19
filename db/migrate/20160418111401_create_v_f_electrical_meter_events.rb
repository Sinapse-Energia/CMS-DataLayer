class CreateVFElectricalMeterEvents < ActiveRecord::Migration
  def change
    create_table :v_f_electrical_meter_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
