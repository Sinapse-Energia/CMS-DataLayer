class CreateAdescFbasics < ActiveRecord::Migration
  def change
    create_table :adesc_fbasics do |t|
      t.text :name
      t.references :v_storagetype, index: true
      t.text :unit
      t.text :minvalue
      t.text :maxvalue
      t.text :regex
      t.text :enumeration
      t.boolean :read_only
      t.integer :maxinstances
      t.text :descr
      t.text :lightcommand

      t.timestamps null: false
    end
    add_foreign_key :adesc_fbasics, :v_storagetypes
  end
end
