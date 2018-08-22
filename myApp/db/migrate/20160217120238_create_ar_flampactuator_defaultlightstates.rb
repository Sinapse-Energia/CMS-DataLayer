class CreateArFlampactuatorDefaultlightstates < ActiveRecord::Migration
  def change
    create_table :ar_flampactuator_defaultlightstates do |t|
      t.references :f_lampactuator, index: true
      t.references :l_lightstate, index: true

      t.timestamps null: false
    end
    add_foreign_key :ar_flampactuator_defaultlightstates, :f_lampactuators
    add_foreign_key :ar_flampactuator_defaultlightstates, :l_lightstates
  end
end
