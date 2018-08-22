class LLightcommand < ActiveRecord::Base
  belongs_to :l_lightstate
  belongs_to :es_scene
  belongs_to :v_reason
  belongs_to :v_action
end
