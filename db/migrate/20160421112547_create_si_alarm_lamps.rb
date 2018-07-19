class CreateSiAlarmLamps < ActiveRecord::Migration
  def change
    create_table :si_alarm_lamps do |t|
      t.integer :threshold
      t.integer :num_repeat
      t.boolean :notif_email
      t.integer :ids_lista_email, array: true
      t.boolean :notif_sms
      t.integer :ids_list_sms, array: true
      t.references :v_type_alarm_lamp, index: true
      t.integer :v_threshold_type_id
      t.references :v_threshold_type, index: true
      t.text :name

      t.timestamps null: false
    end
    add_foreign_key :si_alarm_lamps, :v_type_alarm_lamps
    add_foreign_key :si_alarm_lamps, :v_threshold_types
  end
end
