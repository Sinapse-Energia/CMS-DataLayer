class SiPhysicaldevlamp < ActiveRecord::Base
  belongs_to :v_typelight
  belongs_to :v_typelamppost
  belongs_to :v_typephysicalsupport
  belongs_to :si_physicaldevcircuit
end
