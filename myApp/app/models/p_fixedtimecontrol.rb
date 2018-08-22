class PFixedtimecontrol < ActiveRecord::Base
  belongs_to :l_lightcommand
  belongs_to :ep_controlprogram
  belongs_to :v_astroclock
  belongs_to :v_typeexecution
end
