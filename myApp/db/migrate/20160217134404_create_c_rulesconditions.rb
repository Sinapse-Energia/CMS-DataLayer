class CreateCRulesconditions < ActiveRecord::Migration
  def change
    create_table :c_rulesconditions do |t|
      t.references :v_ruletypecondition, index: true
      t.references :c_calendarrule, index: true

      t.timestamps null: false
    end
    add_foreign_key :c_rulesconditions, :v_ruletypeconditions
    add_foreign_key :c_rulesconditions, :c_calendarrules
  end
end
