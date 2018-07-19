class CreateLLightcommands < ActiveRecord::Migration
  def change
    create_table :l_lightcommands do |t|
      t.references :l_lightstate, index: true
      t.references :es_scene, index: true
      t.references :v_reason, index: true
      t.text :cms_refid
      t.text :ref_addr_control
      t.text :ref_addr_sensor
      t.datetime :expiration
      t.references :v_action, index: true

      t.timestamps null: false
    end
    add_foreign_key :l_lightcommands, :l_lightstates
    add_foreign_key :l_lightcommands, :es_scenes
    add_foreign_key :l_lightcommands, :v_reasons
    add_foreign_key :l_lightcommands, :v_actions
  end
end
