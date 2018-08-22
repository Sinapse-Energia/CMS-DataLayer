class CreateAFlampactuators < ActiveRecord::Migration
  def change
    create_table :a_flampactuators do |t|
      t.text :value
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8
      t.references :adesc_flampactuator, index: true
      t.references :f_lampactuator, index: true

      t.timestamps null: false
    end
    add_foreign_key :a_flampactuators, :adesc_flampactuators
    add_foreign_key :a_flampactuators, :f_lampactuators
  end
end
