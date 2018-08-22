class AddDistanceColumnToSiPhysicaldevlampSiPhysicaldevgateways < ActiveRecord::Migration
  def change
  	add_column :si_physicaldevlamp_si_physicaldevgateways, :distance_lamp_gateway, :integer
  end
end
