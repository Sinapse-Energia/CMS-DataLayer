class CreateArFlampactuatorFeedbacklightcommands < ActiveRecord::Migration
  def change
    create_table :ar_flampactuator_feedbacklightcommands do |t|
      t.references :f_lampactuator, index: true, index: {:name => "index_ar_flampactuator_id"}
      t.references :l_lightcommand, index: true, index: {:name => "index_ar_l_lightcommand_id"}

      t.timestamps null: false
    end
    add_foreign_key :ar_flampactuator_feedbacklightcommands, :f_lampactuators
    add_foreign_key :ar_flampactuator_feedbacklightcommands, :l_lightcommands
  end
end
