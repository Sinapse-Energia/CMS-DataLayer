class CreateSiPhysicaldevpanels < ActiveRecord::Migration
  def change
    create_table :si_physicaldevpanels do |t|
      t.text :name
      t.text :cod_ident
      t.text :location
       t.float :longitude
      t.float :latitude
      t.float :altitude
      t.datetime :date_installation
      t.datetime :date_data
      t.text :cod_module
      t.text :name_vial
      t.text :number_vial
      t.text :power_installed
      t.text :power_contracted
      t.text :switch_general
      t.text :protection_mag
      t.text :protection_diff
      t.text :number_supply
      t.text :number_countpower

      t.timestamps null: false
    end
  end
end
