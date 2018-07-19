class CreateElLamptypes < ActiveRecord::Migration
  def change
    create_table :el_lamptypes do |t|
      t.text :name
      t.text :address
      t.float :wattage
      t.references :v_controltype, index: true
      t.float :control_volmax
      t.float :control_volmin
      t.integer :min_lightoutput
      t.integer :virtual_lightoutput
      t.boolean :dali_ledlinear
      t.integer :warmup_time
      t.integer :cooldown_time
      t.float :low_currentthreshold
      t.float :high_currentthreshold
      t.float :low_lampvoltagethreshold
      t.float :high_lampvoltagethreshold
      t.integer :max_operationghours
      t.float :powerlightgradient
      t.float :lamppowertolerance
      t.float :lamppowerhighthreshold
      t.float :lamppowerlowthreshold
      t.float :powerfactorthreshold
      t.text :lumendrepreciationcurve
      t.references :v_clotype, index: true
      t.integer :seqbridge, :limit => 8
      t.integer :seqcms, :limit => 8

      t.timestamps null: false
    end
    add_foreign_key :el_lamptypes, :v_controltypes
    add_foreign_key :el_lamptypes, :v_clotypes
  end
end
