class EdLogicaldevSiPhysicaldevlamp < ActiveRecord::Base
  belongs_to :ed_logicaldev
  belongs_to :si_physicaldevlamp
end
