class AddToSiPhysicaldevlampFields < ActiveRecord::Migration
  def change
	 add_column :si_physicaldevlamps, :date_data, :datetime
	 add_column :si_physicaldevlamps, :name_vial, :text
	 add_column :si_physicaldevlamps, :lamppost_brand , :text
	 add_column :si_physicaldevlamps, :lamppost_model , :text
	 add_column :si_physicaldevlamps, :typelight_brand , :text
	 add_column :si_physicaldevlamps, :typelight_model , :text
	 add_column :si_physicaldevlamps, :typelight_power , :text
	 add_column :si_physicaldevlamps, :lifetime , :text
	 
	
    
  end
end
