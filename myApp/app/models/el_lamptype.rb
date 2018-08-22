class ElLamptype < ActiveRecord::Base
  belongs_to :v_controltype
  belongs_to :v_clotype
end
