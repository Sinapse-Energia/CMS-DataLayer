class CreateVOccurrences < ActiveRecord::Migration
  def change
    create_table :v_occurrences do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
