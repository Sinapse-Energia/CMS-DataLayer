class CreatePFixedtimecontrols < ActiveRecord::Migration
  def change
    create_table :p_fixedtimecontrols do |t|
      t.time :start_time
      t.references :l_lightcommand, index: true
      t.references :ep_controlprogram, index: true
      t.integer :off_set
      t.timestamps null: false
    end
    add_foreign_key :p_fixedtimecontrols, :l_lightcommands
    add_foreign_key :p_fixedtimecontrols, :ep_controlprograms
  end
end
