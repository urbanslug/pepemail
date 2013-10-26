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

ActiveRecord::Schema.define(:version => 20131026115402) do

  create_table "campaigns", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "tagline"
    t.text     "description"
    t.integer  "item_id"
    t.decimal  "discount"
    t.integer  "target"
    t.string   "campaign_type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "background_color"
    t.string   "secondary_color"
    t.string   "hero_file_name"
    t.string   "hero_content_type"
    t.integer  "hero_file_size"
    t.datetime "hero_updated_at"
    t.string   "bottom_file_name"
    t.string   "bottom_content_type"
    t.integer  "bottom_file_size"
    t.datetime "bottom_updated_at"
  end

  add_index "campaigns", ["item_id"], :name => "index_campaigns_on_item_id"

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.boolean  "subscribe"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "list_price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "item_type"
    t.integer  "user_id"
  end

  add_index "items", ["user_id"], :name => "index_items_on_user_id"

  create_table "photos", :force => true do |t|
    t.integer  "item_id"
    t.string   "caption"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "photos", ["item_id"], :name => "index_photos_on_item_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "company_name"
    t.string   "website"
    t.string   "email_address"
    t.string   "facebook_page"
    t.string   "twitter_handle"
    t.string   "phone_number"
    t.string   "alternate_phone_number"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
