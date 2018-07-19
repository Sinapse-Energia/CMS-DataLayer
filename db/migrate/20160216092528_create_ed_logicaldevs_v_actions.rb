class CreateEdLogicaldevsVActions < ActiveRecord::Migration
  def change
    create_table :ed_logicaldevs_v_actions do |t|
      t.references :ed_logicaldev, index: true
      t.references :v_action, index: true

      t.timestamps null: false
    end
    add_foreign_key :ed_logicaldevs_v_actions, :ed_logicaldevs
    add_foreign_key :ed_logicaldevs_v_actions, :v_actions
  end
end
