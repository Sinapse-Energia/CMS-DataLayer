class CreatePDynamiccontrolelements < ActiveRecord::Migration
  def change
    create_table :p_dynamiccontrolelements do |t|
      t.time :start_time
      t.time :end_time
      t.boolean :is_fixed
      t.references :p_dynamicoperation, index: true
      t.references :l_lightcommand, index: true
      t.references :l_sensor, index: true
      t.references :ep_controlprogram, index: true

      t.timestamps null: false
    end
    add_foreign_key :p_dynamiccontrolelements, :p_dynamicoperations
    add_foreign_key :p_dynamiccontrolelements, :l_lightcommands
    add_foreign_key :p_dynamiccontrolelements, :l_sensors
    add_foreign_key :p_dynamiccontrolelements, :ep_controlprograms
  end
end
