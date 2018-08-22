namespace :ksh do
  desc "Manage Stock For Delivery Box"
  task :karo do
    puts "*********Delivery Box Stock #{Time.now}******"
      ed_logicaldev_si_physicaldevlamps = EdLogicaldevSiPhysicaldevlamp.find_by(ed_logicaldev_id: 4)
    @af = AFlampmonitorHist.where(ed_logicaldev_id: 4, created_at: "Thu, 19 Jul 2018 00:00:00 +0000".."Thu, 19 Jul 2018 23:59:59 +0000")
    find_all_data = AFlampmonitorHist.where(ed_logicaldev_id: 4, created_at: "Thu, 19 Jul 2018 00:00:00 +0000".."Thu, 19 Jul 2018 23:59:59 +0000")
    elspl = EdLogicaldevSiPhysicaldevlamp.find_by(ed_logicaldev_id: 4)
    similar_data = SiPhysicaldevlamp.find_by(id: elspl.si_physicaldevlamp_id)
    ap @af
    @n = 5
    @arr = []
    @count_voltage = 0
    @count_current = 0
    @count_power = 0
    @count_diming = 0
    @af.each do |data|
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
      @af.each_with_index do |data,i|
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
      return @arr
    else
      @find_similar_datas = SiPhysicaldevlamp.where(v_typelight_id: similar_data.v_typelight_id, typelight_power: similar_data.typelight_power)
      @find_similar_datas.each do |data|
        epl = EdLogicaldevSiPhysicaldevlamp.find_by(si_physicaldevlamp_id: data.id)
        @af = AFlampmonitorHist.where(ed_logicaldev_id: epl.ed_logicaldev_id, created_at: "Thu, 19 Jul 2018 00:00:00 +0000".."Thu, 19 Jul 2018 23:59:59 +0000")
        if @af.count >= @n
          @af.each do |data|
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
            @af.each_with_index do |data,i|
              if data.adesc_flampmonitor_id == 6
                puts "voltage = " + data.value
                ap @arr << {"id" => data.ed_logicaldev_id, "voltage" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
              elsif data.adesc_flampmonitor_id == 7
                puts "current = " + data.value
                ap @arr << {"id" => data.ed_logicaldev_id, "current" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
              elsif data.adesc_flampmonitor_id == 8
                puts "power = " + data.value
                ap @arr << {"id" => data.ed_logicaldev_id, "power" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
              elsif data.adesc_flampmonitor_id == 22
                puts "dimming = " + data.value
                ap @arr << {"id" => data.ed_logicaldev_id, "dimming" => data.value, "count" => i + 1, "time_stamp" => data.time_stamp}
              end
            end
          end
        else
          puts "no similar data found"
        end
        # ap @arr
      end
      ap @arr
    end
    puts "*********Delivery Box Stock #{Time.now}*****"
  end
end

# 0 1 * * * /bin/bash -l -c 'cd /var/www/dairylac/Quickmilk/current && RAILS_ENV=production bundle exec rake delivery_box:stock_manage --silent >> log/cron_log.log 2>> log/cron_error_log.log'
