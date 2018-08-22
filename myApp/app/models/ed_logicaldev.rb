class EdLogicaldev < ActiveRecord::Base
  belongs_to :ed_classlogicaldev

  def get_monitoring_profile(id, start_date, end_date, type)
  	ed_logicaldev_si_physicaldevlamps = EdLogicaldevSiPhysicaldevlamp.find_by(ed_logicaldev_id: id)
  	af = AFlampmonitorHist.where(ed_logicaldev_id: id, created_at: start_date..end_date)
  	find_all_data = AFlampmonitorHist.where(ed_logicaldev_id: id, created_at: start_date..end_date)
  	elspl = EdLogicaldevSiPhysicaldevlamp.find_by(ed_logicaldev_id: id)
  	similar_data = SiPhysicaldevlamp.find_by(id: elspl.si_physicaldevlamp_id)
  	@n = 10
  	@arr = []
  	@count_voltage = 0
  	@count_current = 0
  	@count_power = 0
  	@count_diming = 0
		af.each do |data|
			if data.adesc_flampmonitor_id == 6
				@count_voltage = @count_voltage + 1
			elsif data.adesc_flampmonitor_id == 7
				@count_current = @count_current + 1
			elsif data.adesc_flampmonitor_id == 8
				@count_power = @count_power + 1
			elsif data.adesc_flampmonitor_id == 22
				@count_diming = @count_diming + 1
			end
		end
		if @count_current >= @n && @count_diming >= @n && @count_power >= @n && @count_voltage >= @n
			af.each_with_index do |data,i|
				if data.adesc_flampmonitor_id == 6
					puts "voltage = " + data.value
					@arr << {"id" => data.ed_logicaldev_id, "voltage" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
				elsif data.adesc_flampmonitor_id == 7
					puts "current = " + data.value
					@arr << {"id" => data.ed_logicaldev_id, "current" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
				elsif data.adesc_flampmonitor_id == 8
					puts "power = " + data.value
					@arr << {"id" => data.ed_logicaldev_id, "power" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
				elsif data.adesc_flampmonitor_id == 22
					puts "dimming = " + data.value
					@arr << {"id" => data.ed_logicaldev_id, "dimming" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
				end
			end
			ap @arr
		else
			@find_similar_datas = SiPhysicaldevlamp.where(v_typelight_id: similar_data.v_typelight_id, typelight_power: similar_data.typelight_power)
			# ap @find_similar_datas.count
			@find_similar_datas.each_with_index do |data,i|
				ap i
				epl = EdLogicaldevSiPhysicaldevlamp.find_by(si_physicaldevlamp_id: data.id)
				af = AFlampmonitorHist.where(ed_logicaldev_id: epl.ed_logicaldev_id, created_at: start_date..end_date)
				ap af.count
				ap epl
				ap af.count
				ap af.count
				af.each do |data|
					if data.adesc_flampmonitor_id == 6
						@count_voltage = @count_voltage + 1
					elsif data.adesc_flampmonitor_id == 7
						@count_current = @count_current + 1
					elsif data.adesc_flampmonitor_id == 8
						@count_power = @count_power + 1
					elsif data.adesc_flampmonitor_id == 22
						@count_diming = @count_diming + 1
					end
				end
				ap @count_voltage
				ap @count_current
				ap @count_power
				ap @count_diming
				if @count_current >= @n && @count_diming >= @n && @count_power >= @n && @count_voltage >= @n
					af.each_with_index do |data,i|
						if data.adesc_flampmonitor_id == 6
							puts "voltage = " + data.value
							@arr << {"id" => data.ed_logicaldev_id, "voltage" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
						elsif data.adesc_flampmonitor_id == 7
							puts "current = " + data.value
							@arr << {"id" => data.ed_logicaldev_id, "current" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
						elsif data.adesc_flampmonitor_id == 8
							puts "power = " + data.value
							@arr << {"id" => data.ed_logicaldev_id, "power" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
						elsif data.adesc_flampmonitor_id == 22
							puts "dimming = " + data.value
							@arr << {"id" => data.ed_logicaldev_id, "dimming" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
						end
					end
				end
				ap @arr
			end
		end
  end
end
