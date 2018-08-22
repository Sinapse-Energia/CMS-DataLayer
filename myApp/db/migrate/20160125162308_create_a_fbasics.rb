class CreateAFbasics < ActiveRecord::Migration
  def change
    create_table :a_fbasics do |t|
      t.text :value
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8
      t.references :adesc_fbasic, index: true
      t.references :f_basic, index: true

      t.timestamps null: false
    end
    add_foreign_key :a_fbasics, :adesc_fbasics, on_delete: :cascade
    add_foreign_key :a_fbasics, :f_basics, on_delete: :cascade
  end
end
