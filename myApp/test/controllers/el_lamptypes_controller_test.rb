require 'test_helper'

class ElLamptypesControllerTest < ActionController::TestCase
  setup do
    @el_lamptype = el_lamptypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:el_lamptypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create el_lamptype" do
    assert_difference('ElLamptype.count') do
      post :create, el_lamptype: { address: @el_lamptype.address, control_volmax: @el_lamptype.control_volmax, control_volmin: @el_lamptype.control_volmin, cooldown_time: @el_lamptype.cooldown_time, dali_ledlinear: @el_lamptype.dali_ledlinear, high_currentthreshold: @el_lamptype.high_currentthreshold, high_lampvoltagethreshold: @el_lamptype.high_lampvoltagethreshold, lamppowerhighthreshold: @el_lamptype.lamppowerhighthreshold, lamppowerlowthreshold: @el_lamptype.lamppowerlowthreshold, lamppowertolerance: @el_lamptype.lamppowertolerance, low_currentthreshold: @el_lamptype.low_currentthreshold, low_lampvoltagethreshold: @el_lamptype.low_lampvoltagethreshold, lumendrepreciationcurve: @el_lamptype.lumendrepreciationcurve, max_operationghours: @el_lamptype.max_operationghours, min_lightoutput: @el_lamptype.min_lightoutput, name: @el_lamptype.name, powerfactorthreshold: @el_lamptype.powerfactorthreshold, powerlightgradient: @el_lamptype.powerlightgradient, seqbridge: @el_lamptype.seqbridge, seqcms: @el_lamptype.seqcms, v_clotype_id: @el_lamptype.v_clotype_id, v_controltype_id: @el_lamptype.v_controltype_id, virtual_lightoutput: @el_lamptype.virtual_lightoutput, warmup_time: @el_lamptype.warmup_time, wattage: @el_lamptype.wattage }
    end

    assert_redirected_to el_lamptype_path(assigns(:el_lamptype))
  end

  test "should show el_lamptype" do
    get :show, id: @el_lamptype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @el_lamptype
    assert_response :success
  end

  test "should update el_lamptype" do
    patch :update, id: @el_lamptype, el_lamptype: { address: @el_lamptype.address, control_volmax: @el_lamptype.control_volmax, control_volmin: @el_lamptype.control_volmin, cooldown_time: @el_lamptype.cooldown_time, dali_ledlinear: @el_lamptype.dali_ledlinear, high_currentthreshold: @el_lamptype.high_currentthreshold, high_lampvoltagethreshold: @el_lamptype.high_lampvoltagethreshold, lamppowerhighthreshold: @el_lamptype.lamppowerhighthreshold, lamppowerlowthreshold: @el_lamptype.lamppowerlowthreshold, lamppowertolerance: @el_lamptype.lamppowertolerance, low_currentthreshold: @el_lamptype.low_currentthreshold, low_lampvoltagethreshold: @el_lamptype.low_lampvoltagethreshold, lumendrepreciationcurve: @el_lamptype.lumendrepreciationcurve, max_operationghours: @el_lamptype.max_operationghours, min_lightoutput: @el_lamptype.min_lightoutput, name: @el_lamptype.name, powerfactorthreshold: @el_lamptype.powerfactorthreshold, powerlightgradient: @el_lamptype.powerlightgradient, seqbridge: @el_lamptype.seqbridge, seqcms: @el_lamptype.seqcms, v_clotype_id: @el_lamptype.v_clotype_id, v_controltype_id: @el_lamptype.v_controltype_id, virtual_lightoutput: @el_lamptype.virtual_lightoutput, warmup_time: @el_lamptype.warmup_time, wattage: @el_lamptype.wattage }
    assert_redirected_to el_lamptype_path(assigns(:el_lamptype))
  end

  test "should destroy el_lamptype" do
    assert_difference('ElLamptype.count', -1) do
      delete :destroy, id: @el_lamptype
    end

    assert_redirected_to el_lamptypes_path
  end
end
