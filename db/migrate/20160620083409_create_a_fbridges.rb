class CreateAFbridges < ActiveRecord::Migration
  def change
    create_table :a_fbridges do |t|
      t.text :value
      t.integer :seqbridge
      t.integer :seqcms
      t.references :adesc_fbridge, index: true
      t.references :f_bridge, index: true

      t.timestamps null: false
    end
    add_foreign_key :a_fbridges, :adesc_fbridges, on_delete: :cascade
    add_foreign_key :a_fbridges, :f_bridges, on_delete: :cascade
  end
end
