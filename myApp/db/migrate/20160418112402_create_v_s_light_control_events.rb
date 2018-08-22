class CreateVSLightControlEvents < ActiveRecord::Migration
  def change
    create_table :v_s_light_control_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
