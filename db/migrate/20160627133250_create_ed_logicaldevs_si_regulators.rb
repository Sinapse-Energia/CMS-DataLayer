class CreateEdLogicaldevsSiRegulators < ActiveRecord::Migration
  def change
    create_table :ed_logicaldevs_si_regulators do |t|
      t.references :ed_logicaldev, index: true
      t.references :si_regulator, index: true

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldevs_si_regulators, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :ed_logicaldevs_si_regulators, :si_regulators, on_delete: :cascade
  end
end
