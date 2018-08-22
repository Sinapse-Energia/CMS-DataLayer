class CreateAdescFelectricalmeters < ActiveRecord::Migration
  def change
    create_table :adesc_felectricalmeters do |t|
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
    add_foreign_key :adesc_felectricalmeters, :v_storagetypes
  end
end
