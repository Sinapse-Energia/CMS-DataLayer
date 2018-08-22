class CreateAFelectricalmeters < ActiveRecord::Migration
  def change
    create_table :a_felectricalmeters do |t|
      t.text :value
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8
      t.references :adesc_felectricalmeter, index: true
      t.references :f_electricalmeter, index: true

      t.timestamps null: false
    end
    add_foreign_key :a_felectricalmeters, :adesc_felectricalmeters, on_delete: :cascade
    add_foreign_key :a_felectricalmeters, :f_electricalmeters, on_delete: :cascade
  end
end
