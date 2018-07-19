class CreateVTypeexecutions < ActiveRecord::Migration
  def change
    create_table :v_typeexecutions do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
