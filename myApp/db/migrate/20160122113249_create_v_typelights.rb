class CreateVTypelights < ActiveRecord::Migration
  def change
    create_table :v_typelights do |t|
      t.text :name
      t.text :short_name

      t.timestamps null: false
    end
  end
end
