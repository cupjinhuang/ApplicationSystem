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

ActiveRecord::Schema.define(:version => 20131111131949) do

  create_table "conference_grants", :force => true do |t|
    t.string   "name"
    t.string   "staff_id"
    t.string   "passport_id"
    t.string   "post"
    t.integer  "years_at_iiis"
    t.string   "phone_num"
    t.string   "conf_name"
    t.datetime "conf_date"
    t.string   "conf_place"
    t.boolean  "present_paper"
    t.boolean  "present_poster"
    t.string   "title1"
    t.string   "title2"
    t.string   "title3"
    t.string   "title4"
    t.boolean  "coauthored"
    t.string   "coauthor_type"
    t.boolean  "coauthor_present"
    t.float    "airfare"
    t.float    "reg_fee"
    t.float    "hotel_fare"
    t.float    "other_fare"
    t.string   "other_fare_descr"
    t.string   "last_approval_date"
    t.boolean  "host_fund_airfare"
    t.boolean  "host_fund_hotel"
    t.boolean  "host_fund_honorarium"
    t.boolean  "host_fund_others"
    t.string   "host_fund_others_descr"
    t.boolean  "other_fund_airfare"
    t.boolean  "other_fund_hotel"
    t.boolean  "other_fund_honorarium"
    t.boolean  "other_fund_others"
    t.string   "other_fund_others_descr"
    t.integer  "leave_application_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "leave_applications", :force => true do |t|
    t.string   "name"
    t.string   "staff_id"
    t.string   "position_title"
    t.string   "phone_num"
    t.string   "contact_and_addr"
    t.datetime "prev_start_date"
    t.datetime "prev_end_date"
    t.string   "type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "working_day_num"
    t.string   "obligation"
    t.integer  "status"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "leave_grants", :force => true do |t|
    t.string   "name"
    t.string   "staff_id"
    t.string   "passport_id"
    t.string   "post"
    t.integer  "years_at_iiis"
    t.string   "phone_num"
    t.string   "visit_univerisity_name"
    t.string   "inviter_name"
    t.string   "inviter_contact"
    t.datetime "visit_date"
    t.boolean  "give_talk"
    t.string   "title1"
    t.string   "title2"
    t.string   "title3"
    t.string   "title4"
    t.float    "airfare"
    t.float    "hotel_fare"
    t.integer  "hotel_days"
    t.float    "other_fare"
    t.string   "last_approval_date"
    t.integer  "leave_application_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "username"
    t.string   "name"
    t.string   "user_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "visitor_invitations", :force => true do |t|
    t.string   "Name"
    t.integer  "Staff_ID"
    t.string   "Passport_No"
    t.string   "Post"
    t.integer  "Years_at_IIIS"
    t.string   "Telephone_No"
    t.string   "Invitee"
    t.string   "Invitee_Name"
    t.string   "Invitee_Affiliation"
    t.string   "Invitee_Contact"
    t.datetime "Visit_Date_start"
    t.datetime "Visit_Date_end"
    t.string   "Give_talk"
    t.string   "Talk_title"
    t.string   "Airfare"
    t.string   "Hotel_accommodation"
    t.string   "Others"
    t.string   "Last_approval"
    t.string   "Other_airfare"
    t.string   "Other_Hotel_accommodation"
    t.string   "Other_Honorarium"
    t.string   "Other_others"
    t.datetime "Date"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "visits", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "visit_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
