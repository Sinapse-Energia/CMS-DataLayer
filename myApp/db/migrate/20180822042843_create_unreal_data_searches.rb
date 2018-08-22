class CreateUnrealDataSearches < ActiveRecord::Migration
  def change
    create_table :unreal_data_searches do |t|
      t.integer :ed_logicaldev_id
      t.integer :voltage
      t.integer :current
      t.integer :power
      t.integer :dimming
      t.datetime :time_stamp
      t.boolean :real_data

      t.timestamps null: false
    end
  end
end
