class CreateVStoragetypes < ActiveRecord::Migration
  def change
    create_table :v_storagetypes do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
