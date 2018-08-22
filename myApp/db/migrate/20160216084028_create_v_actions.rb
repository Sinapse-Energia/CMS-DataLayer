class CreateVActions < ActiveRecord::Migration
  def change
    create_table :v_actions do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
