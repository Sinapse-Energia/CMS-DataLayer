class CreateArFcommVTypecommunication1s < ActiveRecord::Migration
  def change
    create_table :ar_fcomm_v_typecommunication1s do |t|
      t.references :f_communication, index: true
      t.references :v_typecommunication, index: true

      t.timestamps null: false
    end
    add_foreign_key :ar_fcomm_v_typecommunication1s, :f_communications, on_delete: :cascade
    add_foreign_key :ar_fcomm_v_typecommunication1s, :v_typecommunications
  end
end
