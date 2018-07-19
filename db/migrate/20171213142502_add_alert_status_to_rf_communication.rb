class AddAlertStatusToRfCommunication < ActiveRecord::Migration
  def change
  	 add_column :si_rf_communications, :alert_status, :bool
  end
end
