class AddLampStatusToRfCommunications < ActiveRecord::Migration
  def change
  	 add_column :si_rf_communications, :lamp_status, :integer
  end
end
