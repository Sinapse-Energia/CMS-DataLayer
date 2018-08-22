class SiPanelCircuitRelay < ActiveRecord::Base
  belongs_to :si_physicaldevpanel
  belongs_to :si_physicaldevcircuit
end
