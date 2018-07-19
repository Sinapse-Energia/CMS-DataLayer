class AddToSiPhysicaldevpanelFields < ActiveRecord::Migration
  def change
	 add_column :si_physicaldevpanels, :clock_brand, :text
	 add_column :si_physicaldevpanels, :clock_model, :text
	 add_column :si_physicaldevpanels, :number_circuit, :text
	 
	 add_reference :si_physicaldevpanels, :v_typecommand, index: true
  
 
  add_foreign_key :si_physicaldevpanels, :v_typecommands 
    
  end
end
