class AddRfCoverageParametersToRfCommunications < ActiveRecord::Migration
  def change
  	add_column :si_rf_communications, :rf_coverage, :integer
  	add_column :si_rf_communications, :rf_valid, :integer
  	add_column :si_rf_communications, :rf_not_valid, :integer
  	add_column :si_rf_communications, :rf_coverage_pd, :integer
  	add_column :si_rf_communications, :rf_valid_pd, :integer
  	add_column :si_rf_communications, :rf_not_valid_pd, :integer
    add_column :si_rf_communications, :rf_variation, :integer
  end
end
