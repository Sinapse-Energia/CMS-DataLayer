class CreateLLightstates < ActiveRecord::Migration
  def change
    create_table :l_lightstates do |t|
      t.integer :level
       t.text :description
      t.timestamps null: false
    end
  end
end
