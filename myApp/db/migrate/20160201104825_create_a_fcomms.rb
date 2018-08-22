class CreateAFcomms < ActiveRecord::Migration
  def change
    create_table :a_fcomms do |t|
      t.text :value
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8
      t.references :adesc_fcomm, index: true
      t.references :f_communication, index: true

      t.timestamps null: false
    end
    add_foreign_key :a_fcomms, :adesc_fcomms, on_delete: :cascade
    add_foreign_key :a_fcomms, :f_communications, on_delete: :cascade
  end
end
