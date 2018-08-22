class CreateEgGroups < ActiveRecord::Migration
  def change
    create_table :eg_groups do |t|
      t.text :address
      t.references :v_purpose, index: true

      t.timestamps null: false
    end
    add_foreign_key :eg_groups, :v_purposes
  end
end
