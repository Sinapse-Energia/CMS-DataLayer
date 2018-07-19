class CreateAFlampmonitors < ActiveRecord::Migration
  def change
    create_table :a_flampmonitors do |t|
      t.text :value
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8
      t.references :adesc_flampmonitor, index: true
      t.references :f_lampmonitor, index: true

      t.timestamps null: false
    end
    add_foreign_key :a_flampmonitors, :adesc_flampmonitors
    add_foreign_key :a_flampmonitors, :f_lampmonitors, on_delete: :cascade
  end
end
