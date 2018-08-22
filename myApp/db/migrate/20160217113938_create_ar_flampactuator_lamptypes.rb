class CreateArFlampactuatorLamptypes < ActiveRecord::Migration
  def change
    create_table :ar_flampactuator_lamptypes do |t|
      t.references :f_lampactuator, index: true
      t.references :el_lamptype, index: true

      t.timestamps null: false
    end
    add_foreign_key :ar_flampactuator_lamptypes, :f_lampactuators, on_delete: :cascade
    add_foreign_key :ar_flampactuator_lamptypes, :el_lamptypes
  end
end
