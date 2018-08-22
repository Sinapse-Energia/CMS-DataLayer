class ArFlampactuatorCalendar < ActiveRecord::Base
  belongs_to :f_lampactuator
  belongs_to :ec_calendar
  belongs_to :eg_group
end
