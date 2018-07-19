class CreateArFlampactuatorActuallightstates < ActiveRecord::Migration
  def change
    create_table :ar_flampactuator_actuallightstates do |t|
      t.references :f_lampactuator, index: true
      t.references :l_lightstate, index: true

      t.timestamps null: false
    end
    add_foreign_key :ar_flampactuator_actuallightstates, :f_lampactuators, on_delete: :cascade
    add_foreign_key :ar_flampactuator_actuallightstates, :l_lightstates
  end
end
