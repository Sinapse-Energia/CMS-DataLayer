class SiAlarmLampEdLogicaldev < ActiveRecord::Base
  belongs_to :si_alarm_lamp
  belongs_to :ed_logicaldev
  belongs_to :eg_group
end
