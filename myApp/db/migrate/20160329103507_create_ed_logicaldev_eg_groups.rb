class CreateEdLogicaldevEgGroups < ActiveRecord::Migration
  def change
    create_table :ed_logicaldev_eg_groups do |t|
      t.references :ed_logicaldev, index: true
      t.references :eg_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldev_eg_groups, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :ed_logicaldev_eg_groups, :eg_groups, on_delete: :cascade
  end
end
