class CreateFFunctions < ActiveRecord::Migration
  def change
    create_table :f_functions do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
