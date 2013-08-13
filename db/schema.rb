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

ActiveRecord::Schema.define(:version => 20130813151926) do

  create_table "campaign_members", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "vin"
    t.integer  "odometer"
    t.decimal  "radius"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "campaign"
    t.integer  "campaign_results_count"
    t.decimal  "results_sum"
  end

  create_table "campaign_results", :force => true do |t|
    t.integer  "campaign"
    t.string   "name"
    t.string   "address"
    t.integer  "year"
    t.string   "model"
    t.string   "make"
    t.string   "vin"
    t.datetime "ro_date"
    t.decimal  "w_amount",            :precision => 19, :scale => 2
    t.decimal  "i_amount",            :precision => 19, :scale => 2
    t.decimal  "c_amount",            :precision => 19, :scale => 2
    t.decimal  "ro_amount",           :precision => 19, :scale => 2
    t.decimal  "part_amount",         :precision => 19, :scale => 2
    t.decimal  "labor_amount",        :precision => 19, :scale => 2
    t.decimal  "misc_amount",         :precision => 19, :scale => 2
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.integer  "campaign_members_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
