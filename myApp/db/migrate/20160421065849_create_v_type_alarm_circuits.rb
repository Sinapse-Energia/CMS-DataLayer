class CreateVTypeAlarmCircuits < ActiveRecord::Migration
  def change
    create_table :v_type_alarm_circuits do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
