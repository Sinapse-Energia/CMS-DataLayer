class CreateEdClasslogicaldevsFFunctions < ActiveRecord::Migration
  def change
    create_table :ed_classlogicaldevs_f_functions do |t|
      t.references :ed_classlogicaldev, index: true
      t.references :f_function, index: true

      t.timestamps null: false
    end
    add_foreign_key :ed_classlogicaldevs_f_functions, :ed_classlogicaldevs
    add_foreign_key :ed_classlogicaldevs_f_functions, :f_functions
  end
end
