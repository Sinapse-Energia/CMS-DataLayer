class CreateFBasics < ActiveRecord::Migration
  def change
    create_table :f_basics do |t|
      t.references :ed_logicaldev, index: true

      t.timestamps null: false
    end
    add_foreign_key :f_basics, :ed_logicaldevs, on_delete: :cascade
  end
end
