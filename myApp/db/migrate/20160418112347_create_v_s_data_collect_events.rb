class CreateVSDataCollectEvents < ActiveRecord::Migration
  def change
    create_table :v_s_data_collect_events do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
