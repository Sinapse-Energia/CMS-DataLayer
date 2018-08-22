class AddToFixedtime < ActiveRecord::Migration
  def change
	#add_column :t_logicaldevices, :f_basic_id, :integer
	#add_column :t_logicaldevices, :f_element_id, :integer
	add_reference :p_fixedtimecontrols, :v_astroclock, index: true
	add_reference :p_fixedtimecontrols, :v_typeexecution, index: true
 
  add_foreign_key :p_fixedtimecontrols, :v_astroclocks  
  add_foreign_key :p_fixedtimecontrols, :v_typeexecutions  
    
  end
end
