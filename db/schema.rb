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

ActiveRecord::Schema.define(:version => 20130319101852) do

  create_table "composantes", :force => true do |t|
    t.string   "code"
    t.string   "libelle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personnes", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "statut"
    t.string   "tel"
    t.string   "email"
    t.boolean  "nouveau"
    t.boolean  "sst"
    t.boolean  "charge_evac"
    t.boolean  "f_extinc"
    t.integer  "suivi_med_cons"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "unites", :force => true do |t|
    t.string   "nom"
    t.string   "code"
    t.string   "activite"
    t.integer  "compo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "unites", ["compo_id"], :name => "index_unites_on_compo_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
