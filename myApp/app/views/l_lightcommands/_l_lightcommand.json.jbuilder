json.extract! l_lightcommand, :id, :l_lightstate_id, :es_scene_id, :v_reason_id, :cms_refid, :ref_addr_control, :ref_addr_sensor, :expiration, :v_action_id, :created_at, :updated_at
json.url l_lightcommand_url(l_lightcommand, format: :json)
