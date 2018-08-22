class CreateVTypecommands < ActiveRecord::Migration
  def change
    create_table :v_typecommands do |t|
      t.text :name
      t.text :short_name

      t.timestamps null: false
    end
  end
end
