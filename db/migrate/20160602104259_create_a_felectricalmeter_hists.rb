class CreateAFelectricalmeterHists < ActiveRecord::Migration
  def change
    create_table :a_felectricalmeter_hists do |t|
      t.references :ed_logicaldev, index: true
      t.references :adesc_felectricalmeter, index: true
      t.text :value
      t.datetime :time_stamp
      t.text :type_count

      t.timestamps null: false
    end
    add_foreign_key :a_felectricalmeter_hists, :ed_logicaldevs, on_delete: :cascade
    add_foreign_key :a_felectricalmeter_hists, :adesc_felectricalmeters
  end
end
