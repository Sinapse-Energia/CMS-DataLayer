class CreateCConditionccdates < ActiveRecord::Migration
  def change
    create_table :c_conditionccdates do |t|
      t.text :c_start
      t.text :c_end
      t.references :c_rulescondition, index: true

      t.timestamps null: false
    end
    add_foreign_key :c_conditionccdates, :c_rulesconditions
  end
end
