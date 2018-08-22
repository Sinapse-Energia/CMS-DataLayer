class SiAlarmLamp < ActiveRecord::Base
  belongs_to :v_type_alarm_lamp
  belongs_to :v_threshold_type
  belongs_to :si_mqtt_type_alarm_epd
end
