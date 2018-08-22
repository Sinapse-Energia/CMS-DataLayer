class CreatePControlprogramtypes < ActiveRecord::Migration
  def change
    create_table :p_controlprogramtypes do |t|
      t.references :ep_controlprogram, index: true
      t.references :v_typeactiveperiod, index: true

      t.timestamps null: false
    end
    add_foreign_key :p_controlprogramtypes, :ep_controlprograms
    add_foreign_key :p_controlprogramtypes, :v_typeactiveperiods
  end
end
