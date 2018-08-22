class CreateVFLampactuatorEvents < ActiveRecord::Migration
  def change
    create_table :v_f_lampactuator_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
