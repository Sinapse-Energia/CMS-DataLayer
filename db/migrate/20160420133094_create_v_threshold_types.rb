class CreateVThresholdTypes < ActiveRecord::Migration
  def change
    create_table :v_threshold_types do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
