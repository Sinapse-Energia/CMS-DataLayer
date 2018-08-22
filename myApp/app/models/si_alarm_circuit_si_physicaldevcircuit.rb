class SiAlarmCircuitSiPhysicaldevcircuit < ActiveRecord::Base
  belongs_to :si_alarm_circuit
  belongs_to :si_physicaldevcircuit
  belongs_to :eg_group
end
