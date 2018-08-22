class CreateFCommunications < ActiveRecord::Migration
  def change
    create_table :f_communications do |t|
      t.references :ed_logicaldev, index: true

      t.timestamps null: false
    end
    add_foreign_key :f_communications, :ed_logicaldevs, on_delete: :cascade
  end
end
