# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180613144649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "a_fbasics", force: :cascade do |t|
    t.text     "value"
    t.integer  "seqbridge",       limit: 8
    t.integer  "seqcms",          limit: 8
    t.integer  "adesc_fbasic_id"
    t.integer  "f_basic_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "a_fbasics", ["adesc_fbasic_id"], name: "index_a_fbasics_on_adesc_fbasic_id", using: :btree
  add_index "a_fbasics", ["f_basic_id"], name: "index_a_fbasics_on_f_basic_id", using: :btree

  create_table "a_fbridges", force: :cascade do |t|
    t.text     "value"
    t.integer  "seqbridge"
    t.integer  "seqcms"
    t.integer  "adesc_fbridge_id"
    t.integer  "f_bridge_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "a_fbridges", ["adesc_fbridge_id"], name: "index_a_fbridges_on_adesc_fbridge_id", using: :btree
  add_index "a_fbridges", ["f_bridge_id"], name: "index_a_fbridges_on_f_bridge_id", using: :btree

  create_table "a_fcomms", force: :cascade do |t|
    t.text     "value"
    t.integer  "seqbridge",          limit: 8
    t.integer  "seqcms",             limit: 8
    t.integer  "adesc_fcomm_id"
    t.integer  "f_communication_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "a_fcomms", ["adesc_fcomm_id"], name: "index_a_fcomms_on_adesc_fcomm_id", using: :btree
  add_index "a_fcomms", ["f_communication_id"], name: "index_a_fcomms_on_f_communication_id", using: :btree

  create_table "a_felectricalmeter_hists", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "adesc_felectricalmeter_id"
    t.text     "value"
    t.datetime "time_stamp"
    t.text     "type_count"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "a_felectricalmeter_hists", ["adesc_felectricalmeter_id"], name: "index_a_felectricalmeter_hists_on_adesc_felectricalmeter_id", using: :btree
  add_index "a_felectricalmeter_hists", ["ed_logicaldev_id"], name: "index_a_felectricalmeter_hists_on_ed_logicaldev_id", using: :btree

  create_table "a_felectricalmeters", force: :cascade do |t|
    t.text     "value"
    t.integer  "seqbridge",                 limit: 8
    t.integer  "seqcms",                    limit: 8
    t.integer  "adesc_felectricalmeter_id"
    t.integer  "f_electricalmeter_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "a_felectricalmeters", ["adesc_felectricalmeter_id"], name: "index_a_felectricalmeters_on_adesc_felectricalmeter_id", using: :btree
  add_index "a_felectricalmeters", ["f_electricalmeter_id"], name: "index_a_felectricalmeters_on_f_electricalmeter_id", using: :btree

  create_table "a_flampactuators", force: :cascade do |t|
    t.text     "value"
    t.integer  "seqbridge",              limit: 8
    t.integer  "seqcms",                 limit: 8
    t.integer  "adesc_flampactuator_id"
    t.integer  "f_lampactuator_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "a_flampactuators", ["adesc_flampactuator_id"], name: "index_a_flampactuators_on_adesc_flampactuator_id", using: :btree
  add_index "a_flampactuators", ["f_lampactuator_id"], name: "index_a_flampactuators_on_f_lampactuator_id", using: :btree

  create_table "a_flampmonitor_hists", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "adesc_flampmonitor_id"
    t.text     "value"
    t.datetime "time_stamp"
    t.text     "type_count"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "a_flampmonitor_hists", ["adesc_flampmonitor_id"], name: "index_a_flampmonitor_hists_on_adesc_flampmonitor_id", using: :btree
  add_index "a_flampmonitor_hists", ["ed_logicaldev_id"], name: "index_a_flampmonitor_hists_on_ed_logicaldev_id", using: :btree

  create_table "a_flampmonitors", force: :cascade do |t|
    t.text     "value"
    t.integer  "seqbridge",             limit: 8
    t.integer  "seqcms",                limit: 8
    t.integer  "adesc_flampmonitor_id"
    t.integer  "f_lampmonitor_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "a_flampmonitors", ["adesc_flampmonitor_id"], name: "index_a_flampmonitors_on_adesc_flampmonitor_id", using: :btree
  add_index "a_flampmonitors", ["f_lampmonitor_id"], name: "index_a_flampmonitors_on_f_lampmonitor_id", using: :btree

  create_table "accounts", force: :cascade do |t|
    t.string   "subdomain"
    t.integer  "owner_id"
    t.integer  "v_account_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "accounts", ["v_account_id"], name: "index_accounts_on_v_account_id", using: :btree

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.text     "name"
    t.string   "mobile"
    t.integer  "user_id"
    t.integer  "area_id"
    t.integer  "zone_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.datetime "deleted_at"
    t.boolean  "approved",     default: false
    t.string   "address_type"
  end

  add_index "addresses", ["approved"], name: "index_addresses_on_approved", using: :btree
  add_index "addresses", ["area_id"], name: "index_addresses_on_area_id", using: :btree
  add_index "addresses", ["deleted_at"], name: "index_addresses_on_deleted_at", using: :btree
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree
  add_index "addresses", ["zone_id"], name: "index_addresses_on_zone_id", using: :btree

  create_table "adesc_fbasics", force: :cascade do |t|
    t.text     "name"
    t.integer  "v_storagetype_id"
    t.text     "unit"
    t.text     "minvalue"
    t.text     "maxvalue"
    t.text     "regex"
    t.text     "enumeration"
    t.boolean  "read_only"
    t.integer  "maxinstances"
    t.text     "descr"
    t.text     "lightcommand"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adesc_fbasics", ["v_storagetype_id"], name: "index_adesc_fbasics_on_v_storagetype_id", using: :btree

  create_table "adesc_fbridges", force: :cascade do |t|
    t.text     "name"
    t.integer  "v_storagetype_id"
    t.text     "unit"
    t.text     "minvalue"
    t.text     "maxvalue"
    t.text     "regex"
    t.text     "enumeration"
    t.boolean  "read_only"
    t.integer  "maxinstances"
    t.text     "descr"
    t.text     "lightcommand"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adesc_fbridges", ["v_storagetype_id"], name: "index_adesc_fbridges_on_v_storagetype_id", using: :btree

  create_table "adesc_fcomms", force: :cascade do |t|
    t.text     "name"
    t.integer  "v_storagetype_id"
    t.text     "unit"
    t.text     "minvalue"
    t.text     "maxvalue"
    t.text     "regex"
    t.text     "enumeration"
    t.boolean  "read_only"
    t.integer  "maxinstances"
    t.text     "descr"
    t.text     "lightcommand"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adesc_fcomms", ["v_storagetype_id"], name: "index_adesc_fcomms_on_v_storagetype_id", using: :btree

  create_table "adesc_felectricalmeters", force: :cascade do |t|
    t.text     "name"
    t.integer  "v_storagetype_id"
    t.text     "unit"
    t.text     "minvalue"
    t.text     "maxvalue"
    t.text     "regex"
    t.text     "enumeration"
    t.boolean  "read_only"
    t.integer  "maxinstances"
    t.text     "descr"
    t.text     "lightcommand"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adesc_felectricalmeters", ["v_storagetype_id"], name: "index_adesc_felectricalmeters_on_v_storagetype_id", using: :btree

  create_table "adesc_flampactuators", force: :cascade do |t|
    t.text     "name"
    t.integer  "v_storagetype_id"
    t.text     "unit"
    t.text     "minvalue"
    t.text     "maxvalue"
    t.text     "regex"
    t.text     "enumeration"
    t.boolean  "read_only"
    t.integer  "maxinstances"
    t.text     "descr"
    t.text     "lightcommand"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adesc_flampactuators", ["v_storagetype_id"], name: "index_adesc_flampactuators_on_v_storagetype_id", using: :btree

  create_table "adesc_flampmonitors", force: :cascade do |t|
    t.text     "name"
    t.integer  "v_storagetype_id"
    t.text     "unit"
    t.text     "minvalue"
    t.text     "maxvalue"
    t.text     "regex"
    t.text     "enumeration"
    t.boolean  "read_only"
    t.integer  "maxinstances"
    t.text     "descr"
    t.text     "lightcommand"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adesc_flampmonitors", ["v_storagetype_id"], name: "index_adesc_flampmonitors_on_v_storagetype_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "ar_fcomm_v_typecommunication1s", force: :cascade do |t|
    t.integer  "f_communication_id"
    t.integer  "v_typecommunication_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ar_fcomm_v_typecommunication1s", ["f_communication_id"], name: "index_ar_fcomm_v_typecommunication1s_on_f_communication_id", using: :btree
  add_index "ar_fcomm_v_typecommunication1s", ["v_typecommunication_id"], name: "index_ar_fcomm_v_typecommunication1s_on_v_typecommunication_id", using: :btree

  create_table "ar_fcomm_v_typecommunication2s", force: :cascade do |t|
    t.integer  "f_communication_id"
    t.integer  "v_typecommunication_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ar_fcomm_v_typecommunication2s", ["f_communication_id"], name: "index_ar_fcomm_v_typecommunication2s_on_f_communication_id", using: :btree
  add_index "ar_fcomm_v_typecommunication2s", ["v_typecommunication_id"], name: "index_ar_fcomm_v_typecommunication2s_on_v_typecommunication_id", using: :btree

  create_table "ar_fcommtypes", force: :cascade do |t|
    t.integer  "f_communication_id"
    t.integer  "v_typecommunication_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ar_fcommtypes", ["f_communication_id"], name: "index_ar_fcommtypes_on_f_communication_id", using: :btree
  add_index "ar_fcommtypes", ["v_typecommunication_id"], name: "index_ar_fcommtypes_on_v_typecommunication_id", using: :btree

  create_table "ar_flampactuator_actuallightstates", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "l_lightstate_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ar_flampactuator_actuallightstates", ["f_lampactuator_id"], name: "index_ar_flampactuator_actuallightstates_on_f_lampactuator_id", using: :btree
  add_index "ar_flampactuator_actuallightstates", ["l_lightstate_id"], name: "index_ar_flampactuator_actuallightstates_on_l_lightstate_id", using: :btree

  create_table "ar_flampactuator_calendars", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "ec_calendar_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "is_group"
    t.boolean  "is_single"
    t.integer  "eg_group_id"
  end

  add_index "ar_flampactuator_calendars", ["ec_calendar_id"], name: "index_ar_flampactuator_calendars_on_ec_calendar_id", using: :btree
  add_index "ar_flampactuator_calendars", ["eg_group_id"], name: "index_ar_flampactuator_calendars_on_eg_group_id", using: :btree
  add_index "ar_flampactuator_calendars", ["f_lampactuator_id"], name: "index_ar_flampactuator_calendars_on_f_lampactuator_id", using: :btree

  create_table "ar_flampactuator_defaultlightstates", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "l_lightstate_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ar_flampactuator_defaultlightstates", ["f_lampactuator_id"], name: "index_ar_flampactuator_defaultlightstates_on_f_lampactuator_id", using: :btree
  add_index "ar_flampactuator_defaultlightstates", ["l_lightstate_id"], name: "index_ar_flampactuator_defaultlightstates_on_l_lightstate_id", using: :btree

  create_table "ar_flampactuator_defaultscenestates", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "l_lightstate_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ar_flampactuator_defaultscenestates", ["f_lampactuator_id"], name: "index_ar_flampactuator_defaultscenestates_on_f_lampactuator_id", using: :btree
  add_index "ar_flampactuator_defaultscenestates", ["l_lightstate_id"], name: "index_ar_flampactuator_defaultscenestates_on_l_lightstate_id", using: :btree

  create_table "ar_flampactuator_feedbacklightcommands", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "l_lightcommand_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ar_flampactuator_feedbacklightcommands", ["f_lampactuator_id"], name: "index_ar_flampactuator_id", using: :btree
  add_index "ar_flampactuator_feedbacklightcommands", ["l_lightcommand_id"], name: "index_ar_l_lightcommand_id", using: :btree

  create_table "ar_flampactuator_lamptypes", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "el_lamptype_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ar_flampactuator_lamptypes", ["el_lamptype_id"], name: "index_ar_flampactuator_lamptypes_on_el_lamptype_id", using: :btree
  add_index "ar_flampactuator_lamptypes", ["f_lampactuator_id"], name: "index_ar_flampactuator_lamptypes_on_f_lampactuator_id", using: :btree

  create_table "ar_flampactuator_scenes", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "es_scene_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ar_flampactuator_scenes", ["es_scene_id"], name: "index_ar_flampactuator_scenes_on_es_scene_id", using: :btree
  add_index "ar_flampactuator_scenes", ["f_lampactuator_id"], name: "index_ar_flampactuator_scenes_on_f_lampactuator_id", using: :btree

  create_table "ar_flampactuator_targetlightcommands", force: :cascade do |t|
    t.integer  "f_lampactuator_id"
    t.integer  "l_lightcommand_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ar_flampactuator_targetlightcommands", ["f_lampactuator_id"], name: "index_ar_flampactuator_target_id", using: :btree
  add_index "ar_flampactuator_targetlightcommands", ["l_lightcommand_id"], name: "index_ar_l_lightcommand_target_id", using: :btree

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "city_id"
    t.datetime "deleted_at"
    t.integer  "device_id"
    t.integer  "rank"
    t.integer  "one_time_device_id"
  end

  add_index "areas", ["city_id"], name: "index_areas_on_city_id", using: :btree
  add_index "areas", ["deleted_at"], name: "index_areas_on_deleted_at", using: :btree
  add_index "areas", ["device_id"], name: "index_areas_on_device_id", using: :btree
  add_index "areas", ["zone_id"], name: "index_areas_on_zone_id", using: :btree

  create_table "c_calendarrules", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "ep_controlprogram_id"
    t.integer  "ec_calendar_id"
    t.boolean  "always"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "c_calendarrules", ["ec_calendar_id"], name: "index_c_calendarrules_on_ec_calendar_id", using: :btree
  add_index "c_calendarrules", ["ep_controlprogram_id"], name: "index_c_calendarrules_on_ep_controlprogram_id", using: :btree

  create_table "c_conditionccdates", force: :cascade do |t|
    t.text     "c_start"
    t.text     "c_end"
    t.integer  "c_rulescondition_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "c_conditionccdates", ["c_rulescondition_id"], name: "index_c_conditionccdates_on_c_rulescondition_id", using: :btree

  create_table "c_conditionccdays", force: :cascade do |t|
    t.text     "c_start"
    t.integer  "v_occurrence_id"
    t.text     "c_end"
    t.integer  "c_rulescondition_id"
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wednesday"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "saturday"
    t.boolean  "sunday"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "c_conditionccdays", ["c_rulescondition_id"], name: "index_c_conditionccdays_on_c_rulescondition_id", using: :btree
  add_index "c_conditionccdays", ["v_occurrence_id"], name: "index_c_conditionccdays_on_v_occurrence_id", using: :btree

  create_table "c_rulesconditions", force: :cascade do |t|
    t.integer  "v_ruletypecondition_id"
    t.integer  "c_calendarrule_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "c_rulesconditions", ["c_calendarrule_id"], name: "index_c_rulesconditions_on_c_calendarrule_id", using: :btree
  add_index "c_rulesconditions", ["v_ruletypecondition_id"], name: "index_c_rulesconditions_on_v_ruletypecondition_id", using: :btree

  create_table "cash_boys", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "uniq_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "vote",       default: 0
    t.string   "icon"
    t.datetime "deleted_at"
  end

  add_index "categories", ["deleted_at"], name: "index_categories_on_deleted_at", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer  "state_id"
  end

  add_index "cities", ["deleted_at"], name: "index_cities_on_deleted_at", using: :btree

  create_table "color_codes", force: :cascade do |t|
    t.integer  "r"
    t.integer  "g"
    t.integer  "b"
    t.integer  "area_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "delivery_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.text     "description"
    t.integer  "delivery_id"
    t.integer  "sales_boy_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "coupon_redemptions", force: :cascade do |t|
    t.integer  "coupon_id",  null: false
    t.string   "user_id"
    t.string   "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "code",                                    null: false
    t.string   "description"
    t.date     "valid_from",                              null: false
    t.date     "valid_until"
    t.integer  "redemption_limit",         default: 1,    null: false
    t.integer  "coupon_redemptions_count", default: 0,    null: false
    t.integer  "amount",                   default: 0,    null: false
    t.string   "type",                                    null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.text     "attachments",              default: "{}", null: false
  end

  create_table "damages", force: :cascade do |t|
    t.integer  "device_id"
    t.integer  "sales_boy_id"
    t.integer  "vendor_id"
    t.date     "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "time_slot_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.string   "reason"
  end

  add_index "damages", ["device_id"], name: "index_damages_on_device_id", using: :btree
  add_index "damages", ["time_slot_id"], name: "index_damages_on_time_slot_id", using: :btree
  add_index "damages", ["vendor_id"], name: "index_damages_on_vendor_id", using: :btree

  create_table "deliveries", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "device_id"
    t.integer  "address_id"
    t.date     "date"
    t.string   "payment_status"
    t.string   "delivery_status"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "time_slot_id"
    t.float    "total",                 default: 0.0
    t.float    "balance",               default: 0.0
    t.string   "payment_type"
    t.integer  "vendor_id"
    t.integer  "customer_id"
    t.boolean  "pickup",                default: false
    t.string   "cancel_reason"
    t.float    "paid",                  default: 0.0
    t.integer  "payment_method_id"
    t.datetime "confirm_time"
    t.float    "total_discount",        default: 0.0
    t.integer  "delivery_order"
    t.integer  "recipient_call_status"
    t.integer  "customer_call_status"
    t.integer  "zone_id"
    t.datetime "called_at"
    t.integer  "updated_by_id"
    t.boolean  "updated_by_admin"
  end

  add_index "deliveries", ["address_id"], name: "index_deliveries_on_address_id", using: :btree
  add_index "deliveries", ["customer_id"], name: "index_deliveries_on_customer_id", using: :btree
  add_index "deliveries", ["date"], name: "index_deliveries_on_date", using: :btree
  add_index "deliveries", ["device_id"], name: "index_deliveries_on_device_id", using: :btree
  add_index "deliveries", ["time_slot_id"], name: "index_deliveries_on_time_slot_id", using: :btree
  add_index "deliveries", ["vendor_id"], name: "index_deliveries_on_vendor_id", using: :btree

  create_table "delivery_boxes", force: :cascade do |t|
    t.datetime "assigned_at"
    t.datetime "recieved_at"
    t.integer  "device_id"
    t.integer  "customer_id"
    t.datetime "deleted_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "from_web",    default: false
    t.boolean  "is_recieved", default: false
  end

  add_index "delivery_boxes", ["deleted_at"], name: "index_delivery_boxes_on_deleted_at", using: :btree

  create_table "delivery_packages", force: :cascade do |t|
    t.integer  "delivery_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.float    "total",            default: 0.0
    t.float    "mrp_price"
    t.float    "discount",         default: 0.0
    t.string   "package_status",   default: "0"
    t.string   "cancel_reason"
    t.integer  "updated_by_id"
    t.boolean  "updated_by_admin", default: false
    t.integer  "device_id"
  end

  add_index "delivery_packages", ["delivery_id"], name: "delivery", using: :btree

  create_table "delivery_transactions", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "wallet_id"
    t.integer  "order_id"
    t.integer  "delivery_id"
    t.float    "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "transaction_type"
  end

  create_table "device_informations", force: :cascade do |t|
    t.integer  "device_id"
    t.integer  "sales_boy_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "status"
  end

  create_table "device_stocks", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "device_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "bags_qty",          default: 0
    t.integer  "alloted",           default: 0
    t.integer  "qty_in",            default: 0
    t.string   "qty_in_comments"
    t.integer  "qty_out",           default: 0
    t.string   "qty_out_comments"
    t.integer  "delivered",         default: 0
    t.date     "device_stock_date"
    t.integer  "vendor_id"
  end

  add_index "device_stocks", ["device_id"], name: "index_device_stocks_on_device_id", using: :btree
  add_index "device_stocks", ["product_id"], name: "index_device_stocks_on_product_id", using: :btree

  create_table "discount_histories", force: :cascade do |t|
    t.float    "amount"
    t.integer  "delivery_id"
    t.integer  "coupon_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "cares_user_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "percent"
    t.integer  "amount"
    t.date     "valid_from"
    t.date     "valid_till"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "discounts", ["product_id"], name: "index_discounts_on_product_id", using: :btree

  create_table "ec_calendars", force: :cascade do |t|
    t.text     "address"
    t.integer  "ep_controlprogram_id"
    t.integer  "seqbridge",            limit: 8
    t.integer  "seqcms",               limit: 8
    t.boolean  "actived"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "ec_calendars", ["ep_controlprogram_id"], name: "index_ec_calendars_on_ep_controlprogram_id", using: :btree

  create_table "ed_classlogicaldevs", force: :cascade do |t|
    t.text     "name"
    t.text     "type_device"
    t.text     "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ed_classlogicaldevs_f_functions", force: :cascade do |t|
    t.integer  "ed_classlogicaldev_id"
    t.integer  "f_function_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "ed_classlogicaldevs_f_functions", ["ed_classlogicaldev_id"], name: "index_ed_classlogicaldevs_f_functions_on_ed_classlogicaldev_id", using: :btree
  add_index "ed_classlogicaldevs_f_functions", ["f_function_id"], name: "index_ed_classlogicaldevs_f_functions_on_f_function_id", using: :btree

  create_table "ed_logicaldev_eg_groups", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "eg_group_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ed_logicaldev_eg_groups", ["ed_logicaldev_id"], name: "index_ed_logicaldev_eg_groups_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldev_eg_groups", ["eg_group_id"], name: "index_ed_logicaldev_eg_groups_on_eg_group_id", using: :btree

  create_table "ed_logicaldev_si_physicaldevcircuits", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "si_physicaldevcircuit_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "ed_logicaldev_si_physicaldevcircuits", ["ed_logicaldev_id"], name: "index_ed_logicaldev_si_physicaldevcircuits_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldev_si_physicaldevcircuits", ["si_physicaldevcircuit_id"], name: "index_ed_logicaldev_si_physicaldevcircuit_id", using: :btree

  create_table "ed_logicaldev_si_physicaldevgateways", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "si_physicaldevgateway_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "ed_logicaldev_si_physicaldevgateways", ["ed_logicaldev_id"], name: "index_ed_logicaldev_si_physicaldevgateways_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldev_si_physicaldevgateways", ["si_physicaldevgateway_id"], name: "index_ed_logicaldev_si_physicaldevgateway_id", using: :btree

  create_table "ed_logicaldev_si_physicaldevlamps", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "si_physicaldevlamp_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "ed_logicaldev_si_physicaldevlamps", ["ed_logicaldev_id"], name: "index_ed_logicaldev_si_physicaldevlamps_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldev_si_physicaldevlamps", ["si_physicaldevlamp_id"], name: "index_ed_logicaldev_si_physicaldevlamp_id", using: :btree

  create_table "ed_logicaldev_si_physicaldevpanels", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "si_physicaldevpanel_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ed_logicaldev_si_physicaldevpanels", ["ed_logicaldev_id"], name: "index_ed_logicaldev_si_physicaldevpanels_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldev_si_physicaldevpanels", ["si_physicaldevpanel_id"], name: "index_ed_logicaldev_si_physicaldevpanel_id", using: :btree

  create_table "ed_logicaldev_v_f_basic_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_basic_event_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "ed_logicaldev_v_f_basic_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_v_f_basic_events_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldev_v_f_basic_events", ["v_f_basic_event_id"], name: "index_ed_logicaldev_v_f_basic_events_on_v_f_basic_event_id", using: :btree

  create_table "ed_logicaldev_v_f_binary_sensor_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_binary_sensor_event_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ed_logicaldev_v_f_binary_sensor_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_binary_sensor_event_id", using: :btree
  add_index "ed_logicaldev_v_f_binary_sensor_events", ["v_f_binary_sensor_event_id"], name: "index_binary_sensor_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_f_communication_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_communication_event_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ed_logicaldev_v_f_communication_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_communication_event_id", using: :btree
  add_index "ed_logicaldev_v_f_communication_events", ["v_f_communication_event_id"], name: "index_communication_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_f_electrical_meter_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_electrical_meter_event_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ed_logicaldev_v_f_electrical_meter_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_electrical_meter_event_id", using: :btree
  add_index "ed_logicaldev_v_f_electrical_meter_events", ["v_f_electrical_meter_event_id"], name: "index_electrical_meter_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_f_generic_sensor_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_generic_sensor_event_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "ed_logicaldev_v_f_generic_sensor_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_generic_sensor_event_id", using: :btree
  add_index "ed_logicaldev_v_f_generic_sensor_events", ["v_f_generic_sensor_event_id"], name: "index_generic_sensor_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_f_lampactuator_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_lampactuator_event_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "ed_logicaldev_v_f_lampactuator_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_lampactuator_event_id", using: :btree
  add_index "ed_logicaldev_v_f_lampactuator_events", ["v_f_lampactuator_event_id"], name: "index_lampactuator_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_f_lampmonitor_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_lampmonitor_event_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "ed_logicaldev_v_f_lampmonitor_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_f_lampmonitor_event_id", using: :btree
  add_index "ed_logicaldev_v_f_lampmonitor_events", ["v_f_lampmonitor_event_id"], name: "index_f_lampmonitor_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_f_light_sensor_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_light_sensor_event_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "ed_logicaldev_v_f_light_sensor_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_f_light_sensor_event_id", using: :btree
  add_index "ed_logicaldev_v_f_light_sensor_events", ["v_f_light_sensor_event_id"], name: "index_f_light_sensor_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_f_photocell_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_f_photocell_event_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ed_logicaldev_v_f_photocell_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_f_photocell_event_id", using: :btree
  add_index "ed_logicaldev_v_f_photocell_events", ["v_f_photocell_event_id"], name: "index_f_photocell_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_generic_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_generic_event_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "ed_logicaldev_v_generic_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_v_generic_events_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldev_v_generic_events", ["v_generic_event_id"], name: "index_ed_logicaldev_v_generic_events_on_v_generic_event_id", using: :btree

  create_table "ed_logicaldev_v_s_data_collect_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_s_data_collect_event_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "ed_logicaldev_v_s_data_collect_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_data_collect_event_id", using: :btree
  add_index "ed_logicaldev_v_s_data_collect_events", ["v_s_data_collect_event_id"], name: "index_data_collect_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_s_data_pkg_transfer_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_s_data_pkg_transfer_event_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "ed_logicaldev_v_s_data_pkg_transfer_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_data_pkg_transfer_event_id", using: :btree
  add_index "ed_logicaldev_v_s_data_pkg_transfer_events", ["v_s_data_pkg_transfer_event_id"], name: "index_data_pkg_transfer_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldev_v_s_light_control_events", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_s_light_control_event_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "ed_logicaldev_v_s_light_control_events", ["ed_logicaldev_id"], name: "index_ed_logicaldev_light_control_event_id", using: :btree
  add_index "ed_logicaldev_v_s_light_control_events", ["v_s_light_control_event_id"], name: "index_light_control_event_ed_logicaldev_id", using: :btree

  create_table "ed_logicaldevs", force: :cascade do |t|
    t.text     "name"
    t.text     "address"
    t.integer  "seqbridge",             limit: 8
    t.integer  "seqcms",                limit: 8
    t.integer  "ed_classlogicaldev_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.text     "qr"
  end

  add_index "ed_logicaldevs", ["ed_classlogicaldev_id"], name: "index_ed_logicaldevs_on_ed_classlogicaldev_id", using: :btree

  create_table "ed_logicaldevs_si_regulators", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "si_regulator_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ed_logicaldevs_si_regulators", ["ed_logicaldev_id"], name: "index_ed_logicaldevs_si_regulators_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldevs_si_regulators", ["si_regulator_id"], name: "index_ed_logicaldevs_si_regulators_on_si_regulator_id", using: :btree

  create_table "ed_logicaldevs_v_actions", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "v_action_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ed_logicaldevs_v_actions", ["ed_logicaldev_id"], name: "index_ed_logicaldevs_v_actions_on_ed_logicaldev_id", using: :btree
  add_index "ed_logicaldevs_v_actions", ["v_action_id"], name: "index_ed_logicaldevs_v_actions_on_v_action_id", using: :btree

  create_table "eg_groups", force: :cascade do |t|
    t.text     "address"
    t.integer  "v_purpose_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "eg_groups", ["v_purpose_id"], name: "index_eg_groups_on_v_purpose_id", using: :btree

  create_table "eg_groups_lamp_ed_logicaldevs", force: :cascade do |t|
    t.integer  "eg_group_id"
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "eg_groups_lamp_ed_logicaldevs", ["ed_logicaldev_id"], name: "index_eg_groups_lamp_ed_logicaldevs_on_ed_logicaldev_id", using: :btree
  add_index "eg_groups_lamp_ed_logicaldevs", ["eg_group_id"], name: "index_eg_groups_lamp_ed_logicaldevs_on_eg_group_id", using: :btree

  create_table "eg_groups_panel_ed_logicaldevs", force: :cascade do |t|
    t.integer  "eg_group_id"
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "eg_groups_panel_ed_logicaldevs", ["ed_logicaldev_id"], name: "index_eg_groups_panel_ed_logicaldevs_on_ed_logicaldev_id", using: :btree
  add_index "eg_groups_panel_ed_logicaldevs", ["eg_group_id"], name: "index_eg_groups_panel_ed_logicaldevs_on_eg_group_id", using: :btree

  create_table "eg_groups_si_physicaldevcircuits", force: :cascade do |t|
    t.integer  "eg_group_id"
    t.integer  "si_physicaldevcircuit_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "eg_groups_si_physicaldevcircuits", ["eg_group_id"], name: "index_eg_groups_si_physicaldevcircuits_on_eg_group_id", using: :btree
  add_index "eg_groups_si_physicaldevcircuits", ["si_physicaldevcircuit_id"], name: "index_si_physicaldevcircuit_eg_groups_id", using: :btree

  create_table "el_lamptypes", force: :cascade do |t|
    t.text     "name"
    t.text     "address"
    t.float    "wattage"
    t.integer  "v_controltype_id"
    t.float    "control_volmax"
    t.float    "control_volmin"
    t.integer  "min_lightoutput"
    t.integer  "virtual_lightoutput"
    t.boolean  "dali_ledlinear"
    t.integer  "warmup_time"
    t.integer  "cooldown_time"
    t.float    "low_currentthreshold"
    t.float    "high_currentthreshold"
    t.float    "low_lampvoltagethreshold"
    t.float    "high_lampvoltagethreshold"
    t.integer  "max_operationghours"
    t.float    "powerlightgradient"
    t.float    "lamppowertolerance"
    t.float    "lamppowerhighthreshold"
    t.float    "lamppowerlowthreshold"
    t.float    "powerfactorthreshold"
    t.text     "lumendrepreciationcurve"
    t.integer  "v_clotype_id"
    t.integer  "seqbridge",                 limit: 8
    t.integer  "seqcms",                    limit: 8
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "el_lamptypes", ["v_clotype_id"], name: "index_el_lamptypes_on_v_clotype_id", using: :btree
  add_index "el_lamptypes", ["v_controltype_id"], name: "index_el_lamptypes_on_v_controltype_id", using: :btree

  create_table "ep_controlprograms", force: :cascade do |t|
    t.text     "name"
    t.integer  "seqbridge",  limit: 8
    t.integer  "seqcms",     limit: 8
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "es_scenes", force: :cascade do |t|
    t.text     "scene_id"
    t.integer  "l_lightstate_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "es_scenes", ["l_lightstate_id"], name: "index_es_scenes_on_l_lightstate_id", using: :btree

  create_table "f_basics", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "f_basics", ["ed_logicaldev_id"], name: "index_f_basics_on_ed_logicaldev_id", using: :btree

  create_table "f_bridges", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "f_bridges", ["ed_logicaldev_id"], name: "index_f_bridges_on_ed_logicaldev_id", using: :btree

  create_table "f_communications", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "f_communications", ["ed_logicaldev_id"], name: "index_f_communications_on_ed_logicaldev_id", using: :btree

  create_table "f_electricalmeters", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "f_electricalmeters", ["ed_logicaldev_id"], name: "index_f_electricalmeters_on_ed_logicaldev_id", using: :btree

  create_table "f_functions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_lampactuators", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "f_lampactuators", ["ed_logicaldev_id"], name: "index_f_lampactuators_on_ed_logicaldev_id", using: :btree

  create_table "f_lampmonitors", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "f_lampmonitors", ["ed_logicaldev_id"], name: "index_f_lampmonitors_on_ed_logicaldev_id", using: :btree

  create_table "invoice_histories", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "subtotal"
    t.decimal  "previous_balance"
    t.decimal  "total"
    t.integer  "customer_id"
    t.datetime "deleted_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "invoice_histories", ["deleted_at"], name: "index_invoice_histories_on_deleted_at", using: :btree

  create_table "l_lightcommands", force: :cascade do |t|
    t.integer  "l_lightstate_id"
    t.integer  "es_scene_id"
    t.integer  "v_reason_id"
    t.text     "cms_refid"
    t.text     "ref_addr_control"
    t.text     "ref_addr_sensor"
    t.datetime "expiration"
    t.integer  "v_action_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "l_lightcommands", ["es_scene_id"], name: "index_l_lightcommands_on_es_scene_id", using: :btree
  add_index "l_lightcommands", ["l_lightstate_id"], name: "index_l_lightcommands_on_l_lightstate_id", using: :btree
  add_index "l_lightcommands", ["v_action_id"], name: "index_l_lightcommands_on_v_action_id", using: :btree
  add_index "l_lightcommands", ["v_reason_id"], name: "index_l_lightcommands_on_v_reason_id", using: :btree

  create_table "l_lightstates", force: :cascade do |t|
    t.integer  "level"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "l_sensors", force: :cascade do |t|
    t.text     "sensor_address"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "device_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_stocks", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "subject"
  end

  create_table "nutrition_values", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "calories"
    t.string   "fat"
    t.string   "snf"
    t.string   "minerals"
    t.string   "vitamins"
    t.string   "carbohydrates"
    t.string   "calcium"
  end

  create_table "one_time_deliveries", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "address_id"
    t.integer  "device_id"
    t.integer  "customer_id"
    t.integer  "vendor_id"
    t.integer  "product_id"
    t.integer  "updated_by_id"
    t.integer  "delivery_order"
    t.float    "total",             default: 0.0
    t.float    "balance",           default: 0.0
    t.string   "delivery_status"
    t.string   "payment_status"
    t.string   "payment_type"
    t.date     "date"
    t.boolean  "pickup"
    t.integer  "time_slot_id"
    t.integer  "payment_method_id"
    t.integer  "zone_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "one_time_delivery_packages", force: :cascade do |t|
    t.integer  "one_time_delivery_id"
    t.integer  "product_id"
    t.float    "total"
    t.float    "mrp_price"
    t.float    "paid_amount"
    t.string   "package_status"
    t.string   "cancel_reason"
    t.string   "payment_status"
    t.integer  "device_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "quantity"
  end

  create_table "order_packages", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.boolean  "delivery_generated", default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "time_slot_id"
    t.float    "total",              default: 0.0
    t.integer  "monday",             default: 0
    t.integer  "tuesday",            default: 0
    t.integer  "wednesday",          default: 0
    t.integer  "thursday",           default: 0
    t.integer  "friday",             default: 0
    t.integer  "saturday",           default: 0
    t.integer  "sunday",             default: 0
    t.integer  "default_qty",        default: 0
    t.boolean  "alternate_package",  default: false
    t.date     "alter_package_date"
    t.date     "alter_package_from"
  end

  add_index "order_packages", ["order_id"], name: "index_order_packages_on_order_id", using: :btree
  add_index "order_packages", ["product_id"], name: "index_order_packages_on_product_id", using: :btree
  add_index "order_packages", ["time_slot_id"], name: "index_order_packages_on_time_slot_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "address_id"
    t.integer  "customer_id"
    t.integer  "vendor_id"
    t.integer  "parent_order_id"
    t.date     "delivery_date"
    t.date     "end_date"
    t.boolean  "recurring"
    t.date     "dnd_from"
    t.date     "dnd_to"
    t.string   "status"
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.boolean  "hold",              default: false
    t.float    "total",             default: 0.0
    t.datetime "deleted_at"
    t.boolean  "pickup",            default: false
    t.integer  "device_id"
    t.integer  "payment_method_id"
    t.string   "stoppage"
    t.string   "order_from",        default: "app"
    t.boolean  "is_first_order",    default: false
    t.integer  "created_by_id"
    t.string   "wdays",             default: ["0", "1", "2", "3", "4", "5", "6"],              array: true
    t.boolean  "alternate",         default: false
    t.date     "alter_date"
    t.date     "alter_from"
  end

  add_index "orders", ["address_id"], name: "index_orders_on_address_id", using: :btree
  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["deleted_at"], name: "index_orders_on_deleted_at", using: :btree
  add_index "orders", ["delivery_date"], name: "index_orders_on_delivery_date", using: :btree
  add_index "orders", ["parent_order_id"], name: "index_orders_on_parent_order_id", using: :btree
  add_index "orders", ["vendor_id"], name: "index_orders_on_vendor_id", using: :btree

  create_table "p_activeperiodabsolutes", force: :cascade do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "ep_controlprogram_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "p_activeperiodabsolutes", ["ep_controlprogram_id"], name: "index_p_activeperiodabsolutes_on_ep_controlprogram_id", using: :btree

  create_table "p_activeperiodastroclocks", force: :cascade do |t|
    t.integer  "sunset_offset"
    t.integer  "sunrise_offset"
    t.integer  "ep_controlprogram_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "p_activeperiodastroclocks", ["ep_controlprogram_id"], name: "index_p_activeperiodastroclocks_on_ep_controlprogram_id", using: :btree

  create_table "p_controlprogramtypes", force: :cascade do |t|
    t.integer  "ep_controlprogram_id"
    t.integer  "v_typeactiveperiod_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "p_controlprogramtypes", ["ep_controlprogram_id"], name: "index_p_controlprogramtypes_on_ep_controlprogram_id", using: :btree
  add_index "p_controlprogramtypes", ["v_typeactiveperiod_id"], name: "index_p_controlprogramtypes_on_v_typeactiveperiod_id", using: :btree

  create_table "p_dynamiccontrolelements", force: :cascade do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "is_fixed"
    t.integer  "p_dynamicoperation_id"
    t.integer  "l_lightcommand_id"
    t.integer  "l_sensor_id"
    t.integer  "ep_controlprogram_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "p_dynamiccontrolelements", ["ep_controlprogram_id"], name: "index_p_dynamiccontrolelements_on_ep_controlprogram_id", using: :btree
  add_index "p_dynamiccontrolelements", ["l_lightcommand_id"], name: "index_p_dynamiccontrolelements_on_l_lightcommand_id", using: :btree
  add_index "p_dynamiccontrolelements", ["l_sensor_id"], name: "index_p_dynamiccontrolelements_on_l_sensor_id", using: :btree
  add_index "p_dynamiccontrolelements", ["p_dynamicoperation_id"], name: "index_p_dynamiccontrolelements_on_p_dynamicoperation_id", using: :btree

  create_table "p_dynamicoperations", force: :cascade do |t|
    t.integer  "set"
    t.integer  "v_dynamicoperation_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "p_dynamicoperations", ["v_dynamicoperation_id"], name: "index_p_dynamicoperations_on_v_dynamicoperation_id", using: :btree

  create_table "p_fixedtimecontrols", force: :cascade do |t|
    t.time     "start_time"
    t.integer  "l_lightcommand_id"
    t.integer  "ep_controlprogram_id"
    t.integer  "off_set"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "v_astroclock_id"
    t.integer  "v_typeexecution_id"
  end

  add_index "p_fixedtimecontrols", ["ep_controlprogram_id"], name: "index_p_fixedtimecontrols_on_ep_controlprogram_id", using: :btree
  add_index "p_fixedtimecontrols", ["l_lightcommand_id"], name: "index_p_fixedtimecontrols_on_l_lightcommand_id", using: :btree
  add_index "p_fixedtimecontrols", ["v_astroclock_id"], name: "index_p_fixedtimecontrols_on_v_astroclock_id", using: :btree
  add_index "p_fixedtimecontrols", ["v_typeexecution_id"], name: "index_p_fixedtimecontrols_on_v_typeexecution_id", using: :btree

  create_table "payment_histories", force: :cascade do |t|
    t.float    "amount"
    t.integer  "customer_id"
    t.integer  "vendor_id"
    t.integer  "time_slot_id"
    t.integer  "address_id"
    t.integer  "device_id"
    t.integer  "order_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.datetime "paid_on"
    t.boolean  "is_debit",     default: false
    t.text     "comment"
    t.boolean  "verified",     default: false
    t.string   "payment_type", default: "0"
    t.datetime "modified_at"
    t.string   "paid_by"
    t.integer  "cash_boy_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.text     "token"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "mobile"
    t.datetime "deleted_at"
  end

  add_index "payment_methods", ["deleted_at"], name: "index_payment_methods_on_deleted_at", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "category_id"
    t.text     "description",     default: ""
    t.string   "product_image"
    t.datetime "deleted_at"
    t.integer  "discount",        default: 0
    t.date     "from_date"
    t.date     "till_date"
    t.integer  "qty_per_package", default: 36
    t.string   "display_name"
    t.boolean  "available",       default: true
  end

  add_index "products", ["deleted_at"], name: "index_products_on_deleted_at", using: :btree

  create_table "si_alarm_circuit_si_physicaldevcircuits", force: :cascade do |t|
    t.integer  "si_alarm_circuit_id"
    t.integer  "si_physicaldevcircuit_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "is_group"
    t.boolean  "is_single"
    t.integer  "eg_group_id"
  end

  add_index "si_alarm_circuit_si_physicaldevcircuits", ["eg_group_id"], name: "index_si_alarm_circuit_si_physicaldevcircuits_on_eg_group_id", using: :btree
  add_index "si_alarm_circuit_si_physicaldevcircuits", ["si_alarm_circuit_id"], name: "index_si_alarm_circuit_si_physicaldevcircuit_id", using: :btree
  add_index "si_alarm_circuit_si_physicaldevcircuits", ["si_physicaldevcircuit_id"], name: "index_si_physicaldevcircuit_si_alarm_circuit_id", using: :btree

  create_table "si_alarm_circuits", force: :cascade do |t|
    t.integer  "threshold"
    t.integer  "num_repeat"
    t.boolean  "notif_email"
    t.integer  "ids_lista_email",                      array: true
    t.boolean  "notif_sms"
    t.integer  "ids_list_sms",                         array: true
    t.integer  "v_type_alarm_circuit_id"
    t.text     "name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "si_alarm_circuits", ["v_type_alarm_circuit_id"], name: "index_si_alarm_circuits_on_v_type_alarm_circuit_id", using: :btree

  create_table "si_alarm_lamp_ed_logicaldevs", force: :cascade do |t|
    t.integer  "si_alarm_lamp_id"
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "is_group"
    t.boolean  "is_single"
    t.integer  "eg_group_id"
  end

  add_index "si_alarm_lamp_ed_logicaldevs", ["ed_logicaldev_id"], name: "index_si_alarm_lamp_ed_logicaldevs_on_ed_logicaldev_id", using: :btree
  add_index "si_alarm_lamp_ed_logicaldevs", ["eg_group_id"], name: "index_si_alarm_lamp_ed_logicaldevs_on_eg_group_id", using: :btree
  add_index "si_alarm_lamp_ed_logicaldevs", ["si_alarm_lamp_id"], name: "index_si_alarm_lamp_ed_logicaldevs_on_si_alarm_lamp_id", using: :btree

  create_table "si_alarm_lamps", force: :cascade do |t|
    t.integer  "threshold"
    t.integer  "num_repeat"
    t.boolean  "notif_email"
    t.integer  "ids_lista_email",                        array: true
    t.boolean  "notif_sms"
    t.integer  "ids_list_sms",                           array: true
    t.integer  "v_type_alarm_lamp_id"
    t.integer  "v_threshold_type_id"
    t.text     "name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "si_mqtt_type_alarm_epd_id"
  end

  add_index "si_alarm_lamps", ["si_mqtt_type_alarm_epd_id"], name: "index_si_alarm_lamps_on_si_mqtt_type_alarm_epd_id", using: :btree
  add_index "si_alarm_lamps", ["v_threshold_type_id"], name: "index_si_alarm_lamps_on_v_threshold_type_id", using: :btree
  add_index "si_alarm_lamps", ["v_type_alarm_lamp_id"], name: "index_si_alarm_lamps_on_v_type_alarm_lamp_id", using: :btree

  create_table "si_alarm_panel_ed_logicaldevs", force: :cascade do |t|
    t.integer  "si_alarm_panel_id"
    t.integer  "ed_logicaldev_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "is_group"
    t.boolean  "is_single"
    t.integer  "eg_group_id"
  end

  add_index "si_alarm_panel_ed_logicaldevs", ["ed_logicaldev_id"], name: "index_si_alarm_panel_ed_logicaldevs_on_ed_logicaldev_id", using: :btree
  add_index "si_alarm_panel_ed_logicaldevs", ["eg_group_id"], name: "index_si_alarm_panel_ed_logicaldevs_on_eg_group_id", using: :btree
  add_index "si_alarm_panel_ed_logicaldevs", ["si_alarm_panel_id"], name: "index_si_alarm_panel_ed_logicaldevs_on_si_alarm_panel_id", using: :btree

  create_table "si_alarm_panels", force: :cascade do |t|
    t.integer  "threshold"
    t.integer  "num_repeat"
    t.boolean  "notif_email"
    t.integer  "ids_lista_email",                       array: true
    t.boolean  "notif_sms"
    t.integer  "ids_list_sms",                          array: true
    t.integer  "v_type_alarm_panel_id"
    t.integer  "v_threshold_type_id"
    t.text     "name"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "si_mqtt_type_alarm_ap_id"
  end

  add_index "si_alarm_panels", ["si_mqtt_type_alarm_ap_id"], name: "index_si_alarm_panels_on_si_mqtt_type_alarm_ap_id", using: :btree
  add_index "si_alarm_panels", ["v_threshold_type_id"], name: "index_si_alarm_panels_on_v_threshold_type_id", using: :btree
  add_index "si_alarm_panels", ["v_type_alarm_panel_id"], name: "index_si_alarm_panels_on_v_type_alarm_panel_id", using: :btree

  create_table "si_email_lists", force: :cascade do |t|
    t.text     "description"
    t.integer  "id_user_aux",              array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "si_general_informations", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "broker"
    t.integer  "port"
    t.string   "user"
    t.string   "password"
  end

  create_table "si_mqtt_alarm_aps", force: :cascade do |t|
    t.text     "logical_address"
    t.integer  "si_mqtt_type_alarm_ap_id"
    t.text     "value"
    t.datetime "time_stamp"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "si_mqtt_alarm_aps", ["si_mqtt_type_alarm_ap_id"], name: "index_si_mqtt_alarm_aps_on_si_mqtt_type_alarm_ap_id", using: :btree

  create_table "si_mqtt_alarm_epds", force: :cascade do |t|
    t.text     "logical_address"
    t.integer  "si_mqtt_type_alarm_epd_id"
    t.text     "value"
    t.datetime "time_stamp"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "si_mqtt_alarm_epds", ["si_mqtt_type_alarm_epd_id"], name: "index_si_mqtt_alarm_epds_on_si_mqtt_type_alarm_epd_id", using: :btree

  create_table "si_mqtt_type_alarm_aps", force: :cascade do |t|
    t.text     "type_a"
    t.text     "subtype_a"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "si_mqtt_type_alarm_epds", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "unit"
  end

  create_table "si_panel_circuit_relays", force: :cascade do |t|
    t.integer  "si_physicaldevpanel_id"
    t.integer  "si_physicaldevcircuit_id"
    t.text     "relay"
    t.integer  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "si_panel_circuit_relays", ["si_physicaldevcircuit_id"], name: "index_si_panel_circuit_relays_on_si_physicaldevcircuit_id", using: :btree
  add_index "si_panel_circuit_relays", ["si_physicaldevpanel_id"], name: "index_si_panel_circuit_relays_on_si_physicaldevpanel_id", using: :btree

  create_table "si_physicaldevcircuits", force: :cascade do |t|
    t.text     "name"
    t.text     "type_circuit"
    t.boolean  "magnetotermic"
    t.boolean  "differencial"
    t.text     "conductor_type"
    t.text     "conductor_section"
    t.text     "canalization_type"
    t.integer  "si_physicaldevpanel_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "circuit_number"
    t.boolean  "telemanagement"
  end

  add_index "si_physicaldevcircuits", ["si_physicaldevpanel_id"], name: "index_si_physicaldevcircuits_on_si_physicaldevpanel_id", using: :btree

  create_table "si_physicaldevgateways", force: :cascade do |t|
    t.text     "name"
    t.text     "name_vial"
    t.text     "number_vial"
    t.float    "longitude"
    t.float    "latitude"
    t.float    "altitude"
    t.datetime "date_installation"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "si_physicaldevlamp_si_physicaldevgateways", force: :cascade do |t|
    t.integer  "si_physicaldevlamp_id"
    t.integer  "si_physicaldevgateway_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "distance_lamp_gateway"
    t.integer  "distance_level"
  end

  add_index "si_physicaldevlamp_si_physicaldevgateways", ["si_physicaldevgateway_id"], name: "index_si_physicaldevgateway_id_si_physicaldevlamp_id", using: :btree
  add_index "si_physicaldevlamp_si_physicaldevgateways", ["si_physicaldevlamp_id"], name: "index_si_physicaldevlamp_id_si_physicaldevgateway_id", using: :btree

  create_table "si_physicaldevlamps", force: :cascade do |t|
    t.text     "name"
    t.text     "cod_ident"
    t.text     "location"
    t.float    "longitude"
    t.float    "latitude"
    t.float    "altitude"
    t.datetime "date_installation"
    t.text     "number_lamp"
    t.text     "lamp_power"
    t.integer  "v_typelight_id"
    t.integer  "v_typelamppost_id"
    t.integer  "v_typephysicalsupport_id"
    t.integer  "si_physicaldevcircuit_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.datetime "date_data"
    t.text     "name_vial"
    t.text     "lamppost_brand"
    t.text     "lamppost_model"
    t.text     "typelight_brand"
    t.text     "typelight_model"
    t.text     "typelight_power"
    t.text     "lifetime"
  end

  add_index "si_physicaldevlamps", ["si_physicaldevcircuit_id"], name: "index_si_physicaldevlamps_on_si_physicaldevcircuit_id", using: :btree
  add_index "si_physicaldevlamps", ["v_typelamppost_id"], name: "index_si_physicaldevlamps_on_v_typelamppost_id", using: :btree
  add_index "si_physicaldevlamps", ["v_typelight_id"], name: "index_si_physicaldevlamps_on_v_typelight_id", using: :btree
  add_index "si_physicaldevlamps", ["v_typephysicalsupport_id"], name: "index_si_physicaldevlamps_on_v_typephysicalsupport_id", using: :btree

  create_table "si_physicaldevpanels", force: :cascade do |t|
    t.text     "name"
    t.text     "cod_ident"
    t.text     "location"
    t.float    "longitude"
    t.float    "latitude"
    t.float    "altitude"
    t.datetime "date_installation"
    t.datetime "date_data"
    t.text     "cod_module"
    t.text     "name_vial"
    t.text     "number_vial"
    t.text     "power_installed"
    t.text     "power_contracted"
    t.text     "switch_general"
    t.text     "protection_mag"
    t.text     "protection_diff"
    t.text     "number_supply"
    t.text     "number_countpower"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "clock_brand"
    t.text     "clock_model"
    t.text     "number_circuit"
    t.integer  "v_typecommand_id"
  end

  add_index "si_physicaldevpanels", ["v_typecommand_id"], name: "index_si_physicaldevpanels_on_v_typecommand_id", using: :btree

  create_table "si_regulators", force: :cascade do |t|
    t.text     "id_regulator"
    t.text     "brand_regulator"
    t.text     "power_regulator"
    t.integer  "v_typeregulator_id"
    t.integer  "v_stateregulator_id"
    t.text     "energy_loss"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "si_regulators", ["v_stateregulator_id"], name: "index_si_regulators_on_v_stateregulator_id", using: :btree
  add_index "si_regulators", ["v_typeregulator_id"], name: "index_si_regulators_on_v_typeregulator_id", using: :btree

  create_table "si_rf_communications", force: :cascade do |t|
    t.integer  "ed_logicaldev_id"
    t.integer  "historical_valid"
    t.integer  "historical_not_valid"
    t.integer  "last_day_valid"
    t.integer  "last_day_not_valid"
    t.integer  "last_x_valid"
    t.integer  "last_x_not_valid"
    t.integer  "status"
    t.boolean  "repeater"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "previous_last_day_valid"
    t.integer  "previous_last_day_not_valid"
    t.integer  "lamp_status"
    t.boolean  "alert_status"
    t.integer  "rf_coverage"
    t.integer  "rf_valid"
    t.integer  "rf_not_valid"
    t.integer  "rf_coverage_pd"
    t.integer  "rf_valid_pd"
    t.integer  "rf_not_valid_pd"
    t.integer  "rf_variation"
  end

  add_index "si_rf_communications", ["ed_logicaldev_id"], name: "index_si_rf_communications_on_ed_logicaldev_id", using: :btree

  create_table "si_sms_lists", force: :cascade do |t|
    t.text     "description"
    t.integer  "id_user_aux",              array: true
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer  "zone_id"
  end

  add_index "states", ["deleted_at"], name: "index_states_on_deleted_at", using: :btree

  create_table "stock_histories", force: :cascade do |t|
    t.date     "date"
    t.integer  "product_id"
    t.integer  "vendor_id"
    t.integer  "stock_in",   default: 0
    t.integer  "stock_left", default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "time_slots", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time     "from_time"
    t.time     "to_time"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mobile"
    t.integer  "role"
    t.string   "name"
    t.string   "authentication_token"
    t.integer  "vendor_id"
    t.string   "imei"
    t.integer  "time_slot_id"
    t.string   "id_proof_image"
    t.string   "user_name"
    t.integer  "sales_boy_id"
    t.float    "cash_in_hand",           default: 0.0
    t.string   "my_address",             default: ""
    t.text     "mobile_key"
    t.string   "mobile_type"
    t.date     "dob"
    t.string   "recipient_number"
    t.string   "recipient_name"
    t.string   "id_proof_image_2"
    t.date     "last_delivery_date"
    t.boolean  "is_first_order_present", default: false
    t.float    "due_balance",            default: 0.0
    t.boolean  "black_listed",           default: false
    t.decimal  "billing_amt",            default: 0.0
    t.date     "billing_date"
    t.float    "rebate_loss_amt",        default: 0.0
    t.boolean  "amt_verified",           default: false
    t.string   "pan_card_no"
    t.boolean  "cancel_order_mark",      default: false
    t.integer  "cash_boy_id"
    t.string   "box_status",             default: "0"
    t.datetime "last_payment_date"
    t.datetime "snooze_on"
    t.decimal  "cancel_bill_amt",        default: 0.0
    t.date     "cancel_bill_date"
    t.boolean  "is_cancel",              default: false
    t.datetime "collection_date"
    t.integer  "count",                  default: 0
    t.text     "comment"
    t.string   "created_by"
    t.boolean  "one_time_device",        default: false
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", using: :btree
  add_index "users", ["mobile"], name: "index_users_on_mobile", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role"], name: "index_users_on_role", using: :btree
  add_index "users", ["sales_boy_id"], name: "index_users_on_sales_boy_id", using: :btree
  add_index "users", ["time_slot_id"], name: "index_users_on_time_slot_id", using: :btree
  add_index "users", ["vendor_id"], name: "index_users_on_vendor_id", using: :btree

  create_table "v_accounts", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "v_actions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_astroclocks", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "v_clotypes", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_controltypes", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_dynamicoperations", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_basic_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_binary_sensor_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_communication_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_electrical_meter_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_generic_sensor_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_lampactuator_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_lampmonitor_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_light_sensor_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_f_photocell_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_generic_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_occurrences", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_purposes", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_reasons", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_ruletypeconditions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_s_data_collect_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_s_data_pkg_transfer_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_s_light_control_events", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_stateregulators", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_storagetypes", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_threshold_types", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_type_alarm_circuits", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_type_alarm_lamps", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_type_alarm_panels", force: :cascade do |t|
    t.text     "name"
    t.text     "magnitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_typeactiveperiods", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_typecommands", force: :cascade do |t|
    t.text     "name"
    t.text     "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_typecommunications", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_typeexecutions", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "v_typelampposts", force: :cascade do |t|
    t.text     "name"
    t.text     "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_typelights", force: :cascade do |t|
    t.text     "name"
    t.text     "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_typephysicalsupports", force: :cascade do |t|
    t.text     "name"
    t.text     "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v_typeregulators", force: :cascade do |t|
    t.text     "name"
    t.text     "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendor_cash_collections", force: :cascade do |t|
    t.integer  "vendor_id"
    t.integer  "device_id"
    t.date     "date"
    t.float    "amount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "comment"
    t.integer  "time_slot_id"
  end

  add_index "vendor_cash_collections", ["device_id"], name: "index_vendor_cash_collections_on_device_id", using: :btree
  add_index "vendor_cash_collections", ["time_slot_id"], name: "index_vendor_cash_collections_on_time_slot_id", using: :btree
  add_index "vendor_cash_collections", ["vendor_id"], name: "index_vendor_cash_collections_on_vendor_id", using: :btree

  create_table "vendor_stock_transactions", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "vendor_id"
    t.string   "transaction_type"
    t.integer  "device_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "vendor_stock_transactions", ["device_id"], name: "index_vendor_stock_transactions_on_device_id", using: :btree
  add_index "vendor_stock_transactions", ["product_id"], name: "index_vendor_stock_transactions_on_product_id", using: :btree
  add_index "vendor_stock_transactions", ["vendor_id"], name: "index_vendor_stock_transactions_on_vendor_id", using: :btree

  create_table "vendor_stocks", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "vendor_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "admin_alloted", default: 0
    t.integer  "short",         default: 0
    t.integer  "leak",          default: 0
    t.integer  "used",          default: 0
    t.integer  "temp_alloted",  default: 0
  end

  add_index "vendor_stocks", ["product_id"], name: "index_vendor_stocks_on_product_id", using: :btree
  add_index "vendor_stocks", ["vendor_id"], name: "index_vendor_stocks_on_vendor_id", using: :btree

  create_table "zones", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vendor_id"
    t.datetime "deleted_at"
  end

  add_index "zones", ["deleted_at"], name: "index_zones_on_deleted_at", using: :btree
  add_index "zones", ["vendor_id"], name: "index_zones_on_vendor_id", using: :btree

  add_foreign_key "a_fbasics", "adesc_fbasics", on_delete: :cascade
  add_foreign_key "a_fbasics", "f_basics", on_delete: :cascade
  add_foreign_key "a_fbridges", "adesc_fbridges", on_delete: :cascade
  add_foreign_key "a_fbridges", "f_bridges", on_delete: :cascade
  add_foreign_key "a_fcomms", "adesc_fcomms", on_delete: :cascade
  add_foreign_key "a_fcomms", "f_communications", on_delete: :cascade
  add_foreign_key "a_felectricalmeter_hists", "adesc_felectricalmeters"
  add_foreign_key "a_felectricalmeter_hists", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "a_felectricalmeters", "adesc_felectricalmeters", on_delete: :cascade
  add_foreign_key "a_felectricalmeters", "f_electricalmeters", on_delete: :cascade
  add_foreign_key "a_flampactuators", "adesc_flampactuators"
  add_foreign_key "a_flampactuators", "f_lampactuators"
  add_foreign_key "a_flampmonitor_hists", "adesc_flampmonitors"
  add_foreign_key "a_flampmonitor_hists", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "a_flampmonitors", "adesc_flampmonitors"
  add_foreign_key "a_flampmonitors", "f_lampmonitors", on_delete: :cascade
  add_foreign_key "accounts", "v_accounts"
  add_foreign_key "adesc_fbasics", "v_storagetypes"
  add_foreign_key "adesc_fbridges", "v_storagetypes"
  add_foreign_key "adesc_fcomms", "v_storagetypes"
  add_foreign_key "adesc_felectricalmeters", "v_storagetypes"
  add_foreign_key "adesc_flampactuators", "v_storagetypes"
  add_foreign_key "adesc_flampmonitors", "v_storagetypes"
  add_foreign_key "ar_fcomm_v_typecommunication1s", "f_communications", on_delete: :cascade
  add_foreign_key "ar_fcomm_v_typecommunication1s", "v_typecommunications"
  add_foreign_key "ar_fcomm_v_typecommunication2s", "f_communications", on_delete: :cascade
  add_foreign_key "ar_fcomm_v_typecommunication2s", "v_typecommunications"
  add_foreign_key "ar_fcommtypes", "f_communications", on_delete: :cascade
  add_foreign_key "ar_fcommtypes", "v_typecommunications"
  add_foreign_key "ar_flampactuator_actuallightstates", "f_lampactuators", on_delete: :cascade
  add_foreign_key "ar_flampactuator_actuallightstates", "l_lightstates"
  add_foreign_key "ar_flampactuator_calendars", "ec_calendars"
  add_foreign_key "ar_flampactuator_calendars", "eg_groups", on_delete: :cascade
  add_foreign_key "ar_flampactuator_calendars", "f_lampactuators", on_delete: :cascade
  add_foreign_key "ar_flampactuator_defaultlightstates", "f_lampactuators"
  add_foreign_key "ar_flampactuator_defaultlightstates", "l_lightstates"
  add_foreign_key "ar_flampactuator_defaultscenestates", "f_lampactuators"
  add_foreign_key "ar_flampactuator_defaultscenestates", "l_lightstates"
  add_foreign_key "ar_flampactuator_feedbacklightcommands", "f_lampactuators"
  add_foreign_key "ar_flampactuator_feedbacklightcommands", "l_lightcommands"
  add_foreign_key "ar_flampactuator_lamptypes", "el_lamptypes"
  add_foreign_key "ar_flampactuator_lamptypes", "f_lampactuators", on_delete: :cascade
  add_foreign_key "ar_flampactuator_scenes", "es_scenes"
  add_foreign_key "ar_flampactuator_scenes", "f_lampactuators"
  add_foreign_key "ar_flampactuator_targetlightcommands", "f_lampactuators"
  add_foreign_key "ar_flampactuator_targetlightcommands", "l_lightcommands"
  add_foreign_key "c_calendarrules", "ec_calendars"
  add_foreign_key "c_calendarrules", "ep_controlprograms"
  add_foreign_key "c_conditionccdates", "c_rulesconditions"
  add_foreign_key "c_conditionccdays", "c_rulesconditions"
  add_foreign_key "c_conditionccdays", "v_occurrences"
  add_foreign_key "c_rulesconditions", "c_calendarrules"
  add_foreign_key "c_rulesconditions", "v_ruletypeconditions"
  add_foreign_key "discounts", "products"
  add_foreign_key "ec_calendars", "ep_controlprograms"
  add_foreign_key "ed_classlogicaldevs_f_functions", "ed_classlogicaldevs"
  add_foreign_key "ed_classlogicaldevs_f_functions", "f_functions"
  add_foreign_key "ed_logicaldev_eg_groups", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "ed_logicaldev_eg_groups", "eg_groups", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevcircuits", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevcircuits", "si_physicaldevcircuits", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevgateways", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevgateways", "si_physicaldevgateways", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevlamps", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevlamps", "si_physicaldevlamps", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevpanels", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "ed_logicaldev_si_physicaldevpanels", "si_physicaldevpanels", on_delete: :cascade
  add_foreign_key "ed_logicaldev_v_f_basic_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_basic_events", "v_f_basic_events"
  add_foreign_key "ed_logicaldev_v_f_binary_sensor_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_binary_sensor_events", "v_f_binary_sensor_events"
  add_foreign_key "ed_logicaldev_v_f_communication_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_communication_events", "v_f_communication_events"
  add_foreign_key "ed_logicaldev_v_f_electrical_meter_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_electrical_meter_events", "v_f_electrical_meter_events"
  add_foreign_key "ed_logicaldev_v_f_generic_sensor_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_generic_sensor_events", "v_f_generic_sensor_events"
  add_foreign_key "ed_logicaldev_v_f_lampactuator_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_lampactuator_events", "v_f_lampactuator_events"
  add_foreign_key "ed_logicaldev_v_f_lampmonitor_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_lampmonitor_events", "v_f_lampmonitor_events"
  add_foreign_key "ed_logicaldev_v_f_light_sensor_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_light_sensor_events", "v_f_light_sensor_events"
  add_foreign_key "ed_logicaldev_v_f_photocell_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_f_photocell_events", "v_f_photocell_events"
  add_foreign_key "ed_logicaldev_v_generic_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_generic_events", "v_generic_events"
  add_foreign_key "ed_logicaldev_v_s_data_collect_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_s_data_collect_events", "v_s_data_collect_events"
  add_foreign_key "ed_logicaldev_v_s_data_pkg_transfer_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_s_data_pkg_transfer_events", "v_s_data_pkg_transfer_events"
  add_foreign_key "ed_logicaldev_v_s_light_control_events", "ed_logicaldevs"
  add_foreign_key "ed_logicaldev_v_s_light_control_events", "v_s_light_control_events"
  add_foreign_key "ed_logicaldevs", "ed_classlogicaldevs"
  add_foreign_key "ed_logicaldevs_si_regulators", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "ed_logicaldevs_si_regulators", "si_regulators", on_delete: :cascade
  add_foreign_key "ed_logicaldevs_v_actions", "ed_logicaldevs"
  add_foreign_key "ed_logicaldevs_v_actions", "v_actions"
  add_foreign_key "eg_groups", "v_purposes"
  add_foreign_key "eg_groups_lamp_ed_logicaldevs", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "eg_groups_lamp_ed_logicaldevs", "eg_groups"
  add_foreign_key "eg_groups_panel_ed_logicaldevs", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "eg_groups_panel_ed_logicaldevs", "eg_groups"
  add_foreign_key "eg_groups_si_physicaldevcircuits", "eg_groups"
  add_foreign_key "eg_groups_si_physicaldevcircuits", "si_physicaldevcircuits", on_delete: :cascade
  add_foreign_key "el_lamptypes", "v_clotypes"
  add_foreign_key "el_lamptypes", "v_controltypes"
  add_foreign_key "es_scenes", "l_lightstates"
  add_foreign_key "f_basics", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "f_bridges", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "f_communications", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "f_electricalmeters", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "f_lampactuators", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "f_lampmonitors", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "l_lightcommands", "es_scenes"
  add_foreign_key "l_lightcommands", "l_lightstates"
  add_foreign_key "l_lightcommands", "v_actions"
  add_foreign_key "l_lightcommands", "v_reasons"
  add_foreign_key "p_activeperiodabsolutes", "ep_controlprograms"
  add_foreign_key "p_activeperiodastroclocks", "ep_controlprograms"
  add_foreign_key "p_controlprogramtypes", "ep_controlprograms"
  add_foreign_key "p_controlprogramtypes", "v_typeactiveperiods"
  add_foreign_key "p_dynamiccontrolelements", "ep_controlprograms"
  add_foreign_key "p_dynamiccontrolelements", "l_lightcommands"
  add_foreign_key "p_dynamiccontrolelements", "l_sensors"
  add_foreign_key "p_dynamiccontrolelements", "p_dynamicoperations"
  add_foreign_key "p_dynamicoperations", "v_dynamicoperations"
  add_foreign_key "p_fixedtimecontrols", "ep_controlprograms"
  add_foreign_key "p_fixedtimecontrols", "l_lightcommands"
  add_foreign_key "p_fixedtimecontrols", "v_astroclocks"
  add_foreign_key "p_fixedtimecontrols", "v_typeexecutions"
  add_foreign_key "si_alarm_circuit_si_physicaldevcircuits", "eg_groups"
  add_foreign_key "si_alarm_circuit_si_physicaldevcircuits", "si_alarm_circuits", on_delete: :cascade
  add_foreign_key "si_alarm_circuit_si_physicaldevcircuits", "si_physicaldevcircuits", on_delete: :cascade
  add_foreign_key "si_alarm_circuits", "v_type_alarm_circuits"
  add_foreign_key "si_alarm_lamp_ed_logicaldevs", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "si_alarm_lamp_ed_logicaldevs", "eg_groups"
  add_foreign_key "si_alarm_lamp_ed_logicaldevs", "si_alarm_lamps", on_delete: :cascade
  add_foreign_key "si_alarm_lamps", "si_mqtt_type_alarm_epds"
  add_foreign_key "si_alarm_lamps", "v_threshold_types"
  add_foreign_key "si_alarm_lamps", "v_threshold_types"
  add_foreign_key "si_alarm_lamps", "v_type_alarm_lamps"
  add_foreign_key "si_alarm_panel_ed_logicaldevs", "ed_logicaldevs", on_delete: :cascade
  add_foreign_key "si_alarm_panel_ed_logicaldevs", "eg_groups"
  add_foreign_key "si_alarm_panel_ed_logicaldevs", "si_alarm_panels", on_delete: :cascade
  add_foreign_key "si_alarm_panels", "si_mqtt_type_alarm_aps"
  add_foreign_key "si_alarm_panels", "v_type_alarm_panels"
  add_foreign_key "si_mqtt_alarm_aps", "si_mqtt_type_alarm_aps"
  add_foreign_key "si_mqtt_alarm_epds", "si_mqtt_type_alarm_epds"
  add_foreign_key "si_panel_circuit_relays", "si_physicaldevcircuits", on_delete: :cascade
  add_foreign_key "si_panel_circuit_relays", "si_physicaldevpanels", on_delete: :cascade
  add_foreign_key "si_physicaldevcircuits", "si_physicaldevpanels", on_delete: :cascade
  add_foreign_key "si_physicaldevlamp_si_physicaldevgateways", "si_physicaldevgateways", on_delete: :cascade
  add_foreign_key "si_physicaldevlamp_si_physicaldevgateways", "si_physicaldevlamps", on_delete: :cascade
  add_foreign_key "si_physicaldevlamps", "si_physicaldevcircuits"
  add_foreign_key "si_physicaldevlamps", "v_typelampposts"
  add_foreign_key "si_physicaldevlamps", "v_typelights"
  add_foreign_key "si_physicaldevlamps", "v_typephysicalsupports"
  add_foreign_key "si_physicaldevpanels", "v_typecommands"
  add_foreign_key "si_regulators", "v_stateregulators"
  add_foreign_key "si_regulators", "v_typeregulators"
end
