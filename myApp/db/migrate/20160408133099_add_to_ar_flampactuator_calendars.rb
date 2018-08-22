class AddToArFlampactuatorCalendars < ActiveRecord::Migration
  def change
	add_column :ar_flampactuator_calendars, :is_group, :boolean
	add_column :ar_flampactuator_calendars, :is_single, :boolean
	
	add_reference :ar_flampactuator_calendars, :eg_group, index: true
	
 
  add_foreign_key :ar_flampactuator_calendars, :eg_groups, on_delete: :cascade

    
  end
end
