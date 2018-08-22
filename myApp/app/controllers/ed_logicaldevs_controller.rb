class EdLogicaldevsController < ApplicationController
  before_action :set_ed_logicaldev, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldevs
  # GET /ed_logicaldevs.json
  def index
    @ed_logicaldevs = EdLogicaldev.all
  end

  # GET /ed_logicaldevs/1
  # GET /ed_logicaldevs/1.json
  def show
  end

  # GET /ed_logicaldevs/new
  def new
    @ed_logicaldev = EdLogicaldev.new
  end

  # GET /ed_logicaldevs/1/edit
  def edit
  end

  # POST /ed_logicaldevs
  # POST /ed_logicaldevs.json
  def create
    @ed_logicaldev = EdLogicaldev.new(ed_logicaldev_params)

    respond_to do |format|
      if @ed_logicaldev.save
        format.html { redirect_to @ed_logicaldev, notice: 'Ed logicaldev was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldev }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldevs/1
  # PATCH/PUT /ed_logicaldevs/1.json
  def update
    respond_to do |format|
      if @ed_logicaldev.update(ed_logicaldev_params)
        format.html { redirect_to @ed_logicaldev, notice: 'Ed logicaldev was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldev }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldevs/1
  # DELETE /ed_logicaldevs/1.json
  def destroy
    @ed_logicaldev.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldevs_url, notice: 'Ed logicaldev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

# ****************copy data from here*******************************

  # smart data get monitoring api
  def get_monitoring_profile
    # find all the data with id
    @af = AFlampmonitorHist.where(ed_logicaldev_id: params[:id], created_at: Date.parse(params[:start_date]).beginning_of_day..Date.parse(params[:end_date]).end_of_day)

    if @af.present?
      elspl = EdLogicaldevSiPhysicaldevlamp.find_by(ed_logicaldev_id: params[:id])
      similar_data = SiPhysicaldevlamp.find_by(id: elspl.si_physicaldevlamp_id)
      @n = params[:number_of_times]
      @arr = []
      @voltage_arr = []
      @current_arr = []
      @power_arr = []
      @diming_arr = []
      @res = {}
      @count_voltage = 0
      @count_current = 0
      @count_power = 0
      @count_diming = 0

      # cunter for the number of voltage, current, power, dimming
      counter

      if @count_current >= @n.to_i && @count_diming >= @n.to_i && @count_power >= @n.to_i && @count_voltage >= @n.to_i
        add_data_in_array
        group_by_values_with_time_stamp_real_data
        render :json => {:data => @res}
      else
        @find_similar_datas = SiPhysicaldevlamp.where(v_typelight_id: similar_data.v_typelight_id, typelight_power: similar_data.typelight_power).where.not(id: params[:id])
        @find_similar_datas.each_with_index do |data,i|
          epl = EdLogicaldevSiPhysicaldevlamp.find_by(si_physicaldevlamp_id: data.id)
          @af = AFlampmonitorHist.where(ed_logicaldev_id: epl.ed_logicaldev_id, created_at: Date.parse(params[:start_date]).beginning_of_day..Date.parse(params[:end_date]).end_of_day)
          @count_voltage = 0
          @count_current = 0
          @count_power = 0
          @count_diming = 0
          counter

          if @count_current >= @n.to_i && @count_diming >= @n.to_i && @count_power >= @n.to_i && @count_voltage >= @n.to_i
            add_data_in_array
          end
        end

        # group the data with time_stamp
        group_by_values_with_time_stamp_approx_data

        if @res.present?
          voltage = 0
          current = 0
          power = 0
          dimming = 0
          @arr_voltage = []
          @arr_current = []
          @arr_power = []
          @arr_dimming = []
          @new_arr = []
          @new_res = {}

          # smart logic to calculate the data
          smart_logic

          render :json => {:data => @new_res}
        else
          render :json => {:status => 404, :notice => "No result found"}
        end
      end
    else
      render :json => {:status => 404, :notice => "please check the id"}
    end
  end

# ****************end*******************************
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldev
      @ed_logicaldev = EdLogicaldev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldev_params
      params.require(:ed_logicaldev).permit(:name, :address, :seqbridge, :seqcms, :ed_classlogicaldev_id, :qr)
    end


    # ****************copy data from here******************************* 
    def counter
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
    end

    def add_data_in_array
      @af.each_with_index do |data,i|
        if data.adesc_flampmonitor_id == 6
          puts "voltage = " + data.value
          @arr << {"id" => data.ed_logicaldev_id, "voltage" => data.value, "time_stamp" => data.time_stamp}
        elsif data.adesc_flampmonitor_id == 7
          puts "current = " + data.value
          @arr << {"id" => data.ed_logicaldev_id, "current" => data.value, "time_stamp" => data.time_stamp}
        elsif data.adesc_flampmonitor_id == 8
          puts "power = " + data.value
          @arr << {"id" => data.ed_logicaldev_id, "power" => data.value, "time_stamp" => data.time_stamp}
        elsif data.adesc_flampmonitor_id == 22
          puts "dimming = " + data.value
          @arr << {"id" => data.ed_logicaldev_id, "dimming" => data.value, "time_stamp" => data.time_stamp}
        end
      end
    end

    def group_by_values_with_time_stamp_real_data
      @arr.each do |m|
        ts = m["time_stamp"]
        @res[ts] = {} if @res[ts].nil?
        @res[ts]["id"] = m["id"] unless m["id"].nil?
        @res[ts]["voltage"] = m["voltage"] unless m["voltage"].nil?
        @res[ts]["current"] = m["current"] unless m["current"].nil?
        @res[ts]["power"] = m["power"] unless m["power"].nil?
        @res[ts]["dimming"] = m["dimming"] unless m["dimming"].nil?
        @res[ts]["time_stamp"] = m["time_stamp"] unless m["time_stamp"].nil?
        @res[ts]["real_data"] = true
      end
    end

    def group_by_values_with_time_stamp_approx_data
      UnrealDataSearch.all.delete_all
      @arr.each do |m|
        ts = m["time_stamp"]
        @res[ts] = {} if @res[ts].nil?
        @res[ts]["id"] = m["id"] unless m["id"].nil?
        @res[ts]["voltage"] = m["voltage"] unless m["voltage"].nil?
        @res[ts]["current"] = m["current"] unless m["current"].nil?
        @res[ts]["power"] = m["power"] unless m["power"].nil?
        @res[ts]["dimming"] = m["dimming"] unless m["dimming"].nil?
        @res[ts]["time_stamp"] = m["time_stamp"] unless m["time_stamp"].nil?
        @res[ts]["real_data"] = false
        UnrealDataSearch.create(ed_logicaldev_id: @res[ts]["id"], voltage: @res[ts]["voltage"], current: @res[ts]["current"], power: @res[ts]["power"], dimming: @res[ts]["dimming"], time_stamp: @res[ts]["time_stamp"], real_data: false )
      end
      UnrealDataSearch.where(dimming: nil).delete_all
    end

    def smart_logic
      (1..params[:number_of_res].to_i).each do |x|
        # search of unreal data from the table
        unreal_data = UnrealDataSearch.where(time_stamp: Date.parse(params[:start_date]).beginning_of_day + (x-1)*params[:t_sampling].to_i*60..Date.parse(params[:end_date]).beginning_of_day + x*params[:t_sampling].to_i*60)

        # adding all the data values into their respecitve array
        unreal_data.each do |data|
          voltage = data[:voltage]
          current = data[:current]
          power = data[:power]
          dimming = data[:dimming]
          @arr_voltage << voltage
          @arr_current << current
          @arr_power << power
          @arr_dimming << dimming
        end

        begin
          # avg of all the voltage
          remove_min_voltage = @arr_voltage.delete(@arr_voltage.min)
          remove_max_voltage = @arr_voltage.delete(@arr_voltage.max)
          @avg_voltage = @arr_voltage.sum.to_f/@arr_voltage.length
          
          # avg of all the current
          remove_min_current = @arr_current.delete(@arr_current.min)
          remove_max_current = @arr_current.delete(@arr_current.max)
          @avg_current = @arr_current.sum.to_f/@arr_current.length
          
          # avg of all the power
          remove_min_power = @arr_power.delete(@arr_power.min)
          remove_max_power = @arr_power.delete(@arr_power.max)
          @avg_power = @arr_power.sum.to_f/@arr_power.length

          # avg of all the dimming
          remove_min_dimming = @arr_dimming.delete(@arr_dimming.min)
          remove_max_dimming = @arr_dimming.delete(@arr_dimming.max)
          @avg_dimming = @arr_dimming.sum/@arr_dimming.length
        rescue
          # it will return null if data is not found
        end

        # adding the avg data in array
        @new_arr << {"id": params[:id],"voltage": @avg_voltage,"current": @avg_current, "power": @avg_power, "dimming": @avg_dimming, "time_stamp": Date.parse(params[:start_date]).beginning_of_day + (x-1)*params[:t_sampling].to_i*60 }

        # group the data with time_stamp
        @new_arr.each do |m|
          ts = m[:time_stamp]
          @new_res[ts] = {} if @new_res[ts].nil?
          @new_res[ts][:id] = m[:id]
          @new_res[ts][:voltage] = m[:voltage].round(2)
          @new_res[ts][:current] = m[:current].round(2)
          @new_res[ts][:power] = m[:power].round(2)
          @new_res[ts][:dimming] = m[:dimming]
          @new_res[ts][:time_stamp] = m[:time_stamp]
          @new_res[ts][:real_data] = false
        end
      end
    end

    # ****************end*******************************
end
