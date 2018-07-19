class AddToEdLogicaldevQr < ActiveRecord::Migration
  def change
	add_column :ed_logicaldevs, :qr, :text
    
  end
end
