class SiRegulator < ActiveRecord::Base
  belongs_to :v_typeregulator
  belongs_to :v_stateregulator
end
