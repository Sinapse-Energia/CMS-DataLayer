class CreatePDynamicoperations < ActiveRecord::Migration
  def change
    create_table :p_dynamicoperations do |t|
      t.integer :set
      t.references :v_dynamicoperation, index: true

      t.timestamps null: false
    end
    add_foreign_key :p_dynamicoperations, :v_dynamicoperations
  end
end
