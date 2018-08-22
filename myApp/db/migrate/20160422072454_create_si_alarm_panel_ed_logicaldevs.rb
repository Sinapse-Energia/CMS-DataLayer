class CreateSiAlarmPanelEdLogicaldevs < ActiveRecord::Migration
  def change
    create_table :si_alarm_panel_ed_logicaldevs do |t|
      t.references :si_alarm_panel, index: true
      t.references :ed_logicaldev, index: true

      t.timestamps null: false
    end
    add_foreign_key :si_alarm_panel_ed_logicaldevs, :si_alarm_panels, on_delete: :cascade
    add_foreign_key :si_alarm_panel_ed_logicaldevs, :ed_logicaldevs, on_delete: :cascade
  end
end
