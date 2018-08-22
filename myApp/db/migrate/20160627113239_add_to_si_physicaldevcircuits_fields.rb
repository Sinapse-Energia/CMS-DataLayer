class AddToSiPhysicaldevcircuitsFields < ActiveRecord::Migration
  def change
	 add_column :si_physicaldevcircuits, :circuit_number, :integer
	 add_column :si_physicaldevcircuits, :telemanagement, :boolean
    
  end
end
