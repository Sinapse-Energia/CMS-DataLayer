class CreateVTypeAlarmPanels < ActiveRecord::Migration
  def change
    create_table :v_type_alarm_panels do |t|
      t.text :name
       t.text :magnitude
      t.timestamps null: false
    end
  end
end
