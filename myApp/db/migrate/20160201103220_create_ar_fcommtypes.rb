class CreateArFcommtypes < ActiveRecord::Migration
  def change
    create_table :ar_fcommtypes do |t|
      t.references :f_communication, index: true
      t.references :v_typecommunication, index: true

      t.timestamps null: false
    end
    add_foreign_key :ar_fcommtypes, :f_communications, on_delete: :cascade
    add_foreign_key :ar_fcommtypes, :v_typecommunications
  end
end
