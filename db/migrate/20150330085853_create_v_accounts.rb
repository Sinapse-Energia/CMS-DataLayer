class CreateVAccounts < ActiveRecord::Migration
  def change
    create_table :v_accounts do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
