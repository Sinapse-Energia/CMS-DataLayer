class CCalendarrule < ActiveRecord::Base
  belongs_to :ep_controlprogram
  belongs_to :ec_calendar
end
