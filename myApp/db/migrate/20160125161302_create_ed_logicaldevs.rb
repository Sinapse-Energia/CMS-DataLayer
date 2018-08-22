class CreateEdLogicaldevs < ActiveRecord::Migration
  def change
    create_table :ed_logicaldevs do |t|
      t.text :name
      t.text :address
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8
      t.references :ed_classlogicaldev, index: true

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldevs, :ed_classlogicaldevs
  end
end
