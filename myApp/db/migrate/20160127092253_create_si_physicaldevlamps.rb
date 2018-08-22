class CreateSiPhysicaldevlamps < ActiveRecord::Migration
  def change
    create_table :si_physicaldevlamps do |t|
      t.text :name
      t.text :cod_ident
      t.text :location
      t.float :longitude
      t.float :latitude
      t.float :altitude
      t.datetime :date_installation
      t.text :number_lamp
      t.text :lamp_power
      t.references :v_typelight, index: true
       t.references :v_typelamppost, index: true
      t.references :v_typephysicalsupport, index: true
      t.references :si_physicaldevcircuit, index: true

      t.timestamps null: false
    end
    add_foreign_key :si_physicaldevlamps, :v_typelights
    add_foreign_key :si_physicaldevlamps, :v_typelampposts
    add_foreign_key :si_physicaldevlamps, :v_typephysicalsupports
    add_foreign_key :si_physicaldevlamps, :si_physicaldevcircuits
  end
end
