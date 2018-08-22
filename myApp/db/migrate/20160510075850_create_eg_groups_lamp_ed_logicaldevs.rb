class CreateEgGroupsLampEdLogicaldevs < ActiveRecord::Migration
  def change
    create_table :eg_groups_lamp_ed_logicaldevs do |t|
      t.references :eg_group, index: true
      t.references :ed_logicaldev, index: true

      t.timestamps null: false
    end
    add_foreign_key :eg_groups_lamp_ed_logicaldevs, :eg_groups
    add_foreign_key :eg_groups_lamp_ed_logicaldevs, :ed_logicaldevs, on_delete: :cascade
  end
end
