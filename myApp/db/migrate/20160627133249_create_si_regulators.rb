class CreateSiRegulators < ActiveRecord::Migration
  def change
    create_table :si_regulators do |t|
      t.text :id_regulator
      t.text :brand_regulator
      t.text :power_regulator
      t.references :v_typeregulator, index: true
      t.references :v_stateregulator, index: true
      t.text :energy_loss

      t.timestamps null: false
    end
    add_foreign_key :si_regulators, :v_typeregulators
    add_foreign_key :si_regulators, :v_stateregulators
  end
end
