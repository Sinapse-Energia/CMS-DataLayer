class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :subdomain
      t.integer :owner_id
      t.references :v_account, index: true
      t.timestamps null: false
    end
	add_foreign_key :accounts, :v_accounts
  end
end
