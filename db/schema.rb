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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120227204951) do

  create_table "addresses", :force => true do |t|
    t.string   "address"
    t.integer  "customer_id"
    t.integer  "type_address_id"
    t.string   "motive"
    t.boolean  "status"
    t.datetime "disable_date"
    t.integer  "geoloc_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "addresses", ["customer_id"], :name => "index_addresses_on_customer_id"
  add_index "addresses", ["geoloc_id"], :name => "index_addresses_on_geoloc_id"
  add_index "addresses", ["type_address_id"], :name => "index_addresses_on_type_address_id"

  create_table "auxiliar_managements", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "wallet_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "auxiliar_managements", ["customer_id"], :name => "index_auxiliar_managements_on_customer_id"
  add_index "auxiliar_managements", ["wallet_id"], :name => "index_auxiliar_managements_on_wallet_id"

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "campaign_managements", :force => true do |t|
    t.integer  "wallet_id"
    t.integer  "customer_id"
    t.integer  "campaig_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "campaign_managements", ["campaig_id"], :name => "index_campaign_managements_on_campaig_id"
  add_index "campaign_managements", ["customer_id"], :name => "index_campaign_managements_on_customer_id"
  add_index "campaign_managements", ["wallet_id"], :name => "index_campaign_managements_on_wallet_id"

  create_table "campaign_people", :force => true do |t|
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "campaign_people", ["campaign_id"], :name => "index_campaign_people_on_campaign_id"
  add_index "campaign_people", ["user_id"], :name => "index_campaign_people_on_user_id"

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "citations", :force => true do |t|
    t.integer  "management_id"
    t.datetime "day"
    t.integer  "user_id"
    t.datetime "hour"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "citations", ["management_id"], :name => "index_citations_on_management_id"
  add_index "citations", ["user_id"], :name => "index_citations_on_user_id"

  create_table "current_packages", :force => true do |t|
    t.string   "name"
    t.string   "current_line"
    t.string   "current_speedy"
    t.string   "current_wire"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "code_customer"
    t.string   "name"
    t.integer  "Type_customer_id"
    t.string   "email"
    t.integer  "geoloc_id"
    t.string   "code_custom"
    t.string   "localc"
    t.string   "document"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "customers", ["Type_customer_id"], :name => "index_customers_on_Type_customer_id"
  add_index "customers", ["geoloc_id"], :name => "index_customers_on_geoloc_id"

  create_table "day_managements", :force => true do |t|
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "number_management"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "day_managements", ["user_id"], :name => "index_day_managements_on_user_id"

  create_table "geolocs", :force => true do |t|
    t.string   "code_geoloc"
    t.string   "code_departament"
    t.string   "code_province"
    t.string   "code_district"
    t.string   "departament"
    t.string   "province"
    t.string   "district"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "management_statuses", :force => true do |t|
    t.string   "type_response"
    t.string   "response"
    t.string   "detail_response"
    t.string   "observation"
    t.string   "quailification"
    t.string   "contact"
    t.string   "code_telephony"
    t.string   "code_motive"
    t.boolean  "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "managements", :force => true do |t|
    t.integer  "wallet_id"
    t.integer  "customer_id"
    t.string   "code_plan_product"
    t.string   "money"
    t.boolean  "status"
    t.string   "segment"
    t.integer  "current_package_id"
    t.string   "cycle"
    t.string   "mark"
    t.integer  "business_id"
    t.integer  "rank_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "managements", ["business_id"], :name => "index_managements_on_business_id"
  add_index "managements", ["current_package_id"], :name => "index_managements_on_current_package_id"
  add_index "managements", ["customer_id"], :name => "index_managements_on_customer_id"
  add_index "managements", ["rank_id"], :name => "index_managements_on_rank_id"
  add_index "managements", ["wallet_id"], :name => "index_managements_on_wallet_id"

  create_table "number_calls", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offer_customers", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "wallet_id"
    t.integer  "offer_id"
    t.string   "promotion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "offer_customers", ["customer_id"], :name => "index_offer_customers_on_customer_id"
  add_index "offer_customers", ["offer_id"], :name => "index_offer_customers_on_offer_id"
  add_index "offer_customers", ["wallet_id"], :name => "index_offer_customers_on_wallet_id"

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.string   "clasification"
    t.string   "detail"
    t.string   "response"
    t.string   "code_offer"
    t.string   "line_destiny"
    t.string   "speedy_destiny"
    t.string   "wire_destiny"
    t.string   "auxiliar"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "phones", :force => true do |t|
    t.string   "phone"
    t.integer  "customer_id"
    t.integer  "type_phone_id"
    t.string   "motive"
    t.boolean  "status"
    t.datetime "disable_date"
    t.integer  "geoloc_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "phones", ["customer_id"], :name => "index_phones_on_customer_id"
  add_index "phones", ["geoloc_id"], :name => "index_phones_on_geoloc_id"
  add_index "phones", ["type_phone_id"], :name => "index_phones_on_type_phone_id"

  create_table "portals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ranks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sale_day_totals", :force => true do |t|
    t.datetime "hour"
    t.integer  "user_id"
    t.integer  "wallet_id"
    t.integer  "customer_id"
    t.string   "validation"
    t.string   "observation"
    t.string   "user_validator"
    t.datetime "hour_validator"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "sale_day_totals", ["customer_id"], :name => "index_sale_day_totals_on_customer_id"
  add_index "sale_day_totals", ["user_id"], :name => "index_sale_day_totals_on_user_id"
  add_index "sale_day_totals", ["wallet_id"], :name => "index_sale_day_totals_on_wallet_id"

  create_table "sale_days", :force => true do |t|
    t.integer  "wallet_id"
    t.integer  "customer_id"
    t.datetime "hour"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sale_days", ["customer_id"], :name => "index_sale_days_on_customer_id"
  add_index "sale_days", ["user_id"], :name => "index_sale_days_on_user_id"
  add_index "sale_days", ["wallet_id"], :name => "index_sale_days_on_wallet_id"

  create_table "teleoperations", :force => true do |t|
    t.integer  "number_call_id"
    t.integer  "wallet_id"
    t.integer  "customer_id"
    t.integer  "management_status_id"
    t.integer  "user_id"
    t.string   "quota"
    t.datetime "date_management"
    t.datetime "hour_management"
    t.string   "observation"
    t.boolean  "status"
    t.integer  "duration_call"
    t.string   "name_responsible"
    t.integer  "offer_id"
    t.string   "dni"
    t.string   "ruc"
    t.string   "reference_phone"
    t.string   "relationship"
    t.string   "ce"
    t.string   "domain"
    t.string   "nonel"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "teleoperations", ["customer_id"], :name => "index_teleoperations_on_customer_id"
  add_index "teleoperations", ["management_status_id"], :name => "index_teleoperations_on_management_status_id"
  add_index "teleoperations", ["number_call_id"], :name => "index_teleoperations_on_number_call_id"
  add_index "teleoperations", ["offer_id"], :name => "index_teleoperations_on_offer_id"
  add_index "teleoperations", ["user_id"], :name => "index_teleoperations_on_user_id"
  add_index "teleoperations", ["wallet_id"], :name => "index_teleoperations_on_wallet_id"

  create_table "temporal_managements", :force => true do |t|
    t.integer  "management_id"
    t.datetime "date_call"
    t.integer  "management_status_id"
    t.datetime "hour_call"
    t.integer  "number_call_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "temporal_managements", ["management_id"], :name => "index_temporal_managements_on_management_id"
  add_index "temporal_managements", ["management_status_id"], :name => "index_temporal_managements_on_management_status_id"
  add_index "temporal_managements", ["number_call_id"], :name => "index_temporal_managements_on_number_call_id"

  create_table "type_addresses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "type_customers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "type_phones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "dni"
    t.string   "email"
    t.datetime "datebirth"
    t.string   "phone"
    t.integer  "profile_id"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["profile_id"], :name => "index_users_on_profile_id"

  create_table "validations", :force => true do |t|
    t.integer  "wallet_id"
    t.integer  "customer_id"
    t.integer  "user_id"
    t.datetime "date_sale"
    t.datetime "hour_sale"
    t.string   "user_validator"
    t.datetime "hour_validator"
    t.string   "observation"
    t.integer  "status"
    t.boolean  "Flag"
    t.string   "line_destiny"
    t.string   "speedy_destiny"
    t.string   "cable_destiny"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "validations", ["customer_id"], :name => "index_validations_on_customer_id"
  add_index "validations", ["user_id"], :name => "index_validations_on_user_id"
  add_index "validations", ["wallet_id"], :name => "index_validations_on_wallet_id"

  create_table "wallets", :force => true do |t|
    t.string   "name"
    t.datetime "date_start"
    t.datetime "date_end"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
