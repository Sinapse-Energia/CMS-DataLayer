class CreateArFlampactuatorTargetlightcommands < ActiveRecord::Migration
  def change
    create_table :ar_flampactuator_targetlightcommands do |t|
      t.references :f_lampactuator, index: {:name => "index_ar_flampactuator_target_id"}
      t.references :l_lightcommand, index: {:name => "index_ar_l_lightcommand_target_id"}

      t.timestamps null: false
    end
    add_foreign_key :ar_flampactuator_targetlightcommands, :f_lampactuators
    add_foreign_key :ar_flampactuator_targetlightcommands, :l_lightcommands
  end
end
