class CreateCConditionccdays < ActiveRecord::Migration
  def change
    create_table :c_conditionccdays do |t|
      t.text :c_start
      t.references :v_occurrence, index: true
      t.text :c_end
      t.references :c_rulescondition, index: true
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday

      t.timestamps null: false
    end
    add_foreign_key :c_conditionccdays, :v_occurrences
    add_foreign_key :c_conditionccdays, :c_rulesconditions
  end
end
