class CreateSiSmsLists < ActiveRecord::Migration
  def change
    create_table :si_sms_lists do |t|
      t.text :description
      t.integer :id_user_aux, array: true

      t.timestamps null: false
    end
  end
end
