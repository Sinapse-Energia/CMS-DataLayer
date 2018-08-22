class EsScene < ActiveRecord::Base
  belongs_to :scene
  belongs_to :l_lightstate
end
