class PDynamiccontrolelement < ActiveRecord::Base
  belongs_to :p_dynamicoperation
  belongs_to :l_lightcommand
  belongs_to :l_sensor
  belongs_to :ep_controlprogram
end
