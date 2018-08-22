class CreateVRuletypeconditions < ActiveRecord::Migration
  def change
    create_table :v_ruletypeconditions do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
