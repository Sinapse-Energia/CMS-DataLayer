class SiAlarmPanelEdLogicaldev < ActiveRecord::Base
  belongs_to :si_alarm_panel
  belongs_to :ed_logicaldev
  belongs_to :eg_group
end
