class CreateVDynamicoperations < ActiveRecord::Migration
  def change
    create_table :v_dynamicoperations do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
