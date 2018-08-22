class CreateSiPhysicaldevgateways < ActiveRecord::Migration
  def change
    create_table :si_physicaldevgateways do |t|
      t.text :name
      t.text :name_vial
      t.text :number_vial
      t.float :longitude
      t.float :latitude
      t.float :altitude
      t.datetime :date_installation

      t.timestamps null: false
    end
  end
end
