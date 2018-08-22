Rails.application.routes.draw do
  resources :v_typeregulators
  resources :v_typephysicalsupports
  resources :v_typelights
  resources :v_typelampposts
  resources :v_typeexecutions
  resources :v_typecommunications
  resources :v_typecommands
  resources :v_typeactiveperiods
  resources :v_type_alarm_panels
  resources :v_type_alarm_lamps
  resources :v_type_alarm_circuits
  resources :v_threshold_types
  resources :v_storagetypes
  resources :v_stateregulators
  resources :vs_light_control_events
  resources :vs_data_pkg_transfer_events
  resources :vs_data_collect_events
  resources :v_ruletypeconditions
  resources :v_reasons
  resources :v_purposes
  resources :v_occurrences
  resources :v_generic_events
  resources :vf_photocell_events
  resources :vf_light_sensor_events
  resources :vf_lampmonitor_events
  resources :vf_lampactuator_events
  resources :vf_generic_sensor_events
  resources :vf_electrical_meter_events
  resources :vf_communication_events
  resources :vf_binary_sensor_events
  resources :vf_basic_events
  resources :v_dynamicoperations
  resources :v_controltypes
  resources :v_clotypes
  resources :v_astroclocks
  resources :v_actions
  resources :v_accounts
  resources :users
  resources :si_sms_lists
  resources :si_rf_communications
  resources :si_regulators
  resources :si_physicaldevpanels
  resources :si_physicaldevlamps
  resources :si_physicaldevlamp_si_physicaldevgateways
  resources :si_physicaldevgateways
  resources :si_physicaldevcircuits
  resources :si_panel_circuit_relays
  resources :si_mqtt_type_alarm_epds
  resources :si_mqtt_type_alarm_aps
  resources :si_mqtt_alarm_epds
  resources :si_mqtt_alarm_aps
  resources :si_general_informations
  resources :si_email_lists
  resources :si_alarm_panels
  resources :si_alarm_panel_ed_logicaldevs
  resources :si_alarm_lamps
  resources :si_alarm_lamp_ed_logicaldevs
  resources :si_alarm_circuits
  resources :si_alarm_circuit_si_physicaldevcircuits
  resources :p_fixedtimecontrols
  resources :p_dynamicoperations
  resources :p_dynamiccontrolelements
  resources :p_controlprogramtypes
  resources :p_activeperiodastroclocks
  resources :p_activeperiodabsolutes
  resources :messages
  resources :l_sensors
  resources :l_lightstates
  resources :l_lightcommands
  resources :f_lampmonitors
  resources :f_lampactuators
  resources :f_functions
  resources :f_electricalmeters
  resources :f_communications
  resources :f_bridges
  resources :f_basics
  resources :es_scenes
  resources :ep_controlprograms
  resources :el_lamptypes
  resources :eg_groups_si_physicaldevcircuits
  resources :eg_groups_panel_ed_logicaldevs
  resources :eg_groups_lamp_ed_logicaldevs
  resources :eg_groups
  resources :ed_logicaldevs_v_actions
  resources :ed_logicaldevs_si_regulators
  resources :ed_logicaldevs do
    collection do
      get :get_monitoring_profile
    end
  end
  resources :ed_logicaldev_vs_light_control_events
  resources :ed_logicaldev_vs_data_pkg_transfer_events
  resources :ed_logicaldev_vs_data_collect_events
  resources :ed_logicaldev_v_generic_events
  resources :ed_logicaldev_vf_photocell_events
  resources :ed_logicaldev_vf_light_sensor_events
  resources :ed_logicaldev_vf_lampmonitor_events
  resources :ed_logicaldev_vf_lampactuator_events
  resources :ed_logicaldev_vf_generic_sensor_events
  resources :ed_logicaldev_vf_electrical_meter_events
  resources :ed_logicaldev_vf_communication_events
  resources :ed_logicaldev_vf_binary_sensor_events
  resources :ed_logicaldev_vf_basic_events
  resources :ed_logicaldev_si_physicaldevpanels
  resources :ed_logicaldev_si_physicaldevlamps
  resources :ed_logicaldev_si_physicaldevgateways
  resources :ed_logicaldev_si_physicaldevcircuits
  resources :ed_logicaldev_eg_groups
  resources :ed_classlogicaldevs_f_functions
  resources :ed_classlogicaldevs
  resources :ec_calendars
  resources :c_rulesconditions
  resources :c_conditionccdays
  resources :c_conditionccdates
  resources :c_calendarrules
  resources :ar_flampactuator_targetlightcommands
  resources :ar_flampactuator_scenes
  resources :ar_flampactuator_lamptypes
  resources :ar_flampactuator_feedbacklightcommands
  resources :ar_flampactuator_defaultscenestates
  resources :ar_flampactuator_defaultlightstates
  resources :ar_flampactuator_calendars
  resources :ar_flampactuator_actuallightstates
  resources :ar_fcommtypes
  resources :ar_fcomm_v_typecommunication2s
  resources :ar_fcomm_v_typecommunication1s
  resources :adesc_flampmonitors
  resources :adesc_flampactuators
  resources :adesc_felectricalmeters
  resources :adesc_fcomms
  resources :adesc_fbridges
  resources :adesc_fbasics
  resources :accounts
  resources :a_flampmonitors
  resources :a_flampmonitor_hists
  resources :a_flampactuators
  resources :a_felectricalmeters
  resources :a_felectricalmeter_hists
  resources :a_fcomms
  resources :a_fbridges
  resources :a_fbasics
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
