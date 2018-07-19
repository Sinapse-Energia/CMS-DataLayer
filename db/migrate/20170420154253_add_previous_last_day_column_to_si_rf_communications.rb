class AddPreviousLastDayColumnToSiRfCommunications < ActiveRecord::Migration
  def change
    add_column :si_rf_communications, :previous_last_day_valid, :integer
    add_column :si_rf_communications, :previous_last_day_not_valid, :integer
  end
end
