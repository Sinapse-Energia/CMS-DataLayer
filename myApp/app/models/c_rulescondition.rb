class CRulescondition < ActiveRecord::Base
  belongs_to :v_ruletypecondition
  belongs_to :c_calendarrule
end
