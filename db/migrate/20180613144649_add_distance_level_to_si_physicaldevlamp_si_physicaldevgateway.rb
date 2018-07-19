class AddDistanceLevelToSiPhysicaldevlampSiPhysicaldevgateway < ActiveRecord::Migration
  def change	
    add_column :si_physicaldevlamp_si_physicaldevgateways, :distance_level, :integer  
  end
end
