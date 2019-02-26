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

ActiveRecord::Schema.define(version: 20181203151923) do

  create_table "ahoy_visits", force: :cascade do |t|
    t.string   "visit_token",      limit: 255
    t.string   "visitor_token",    limit: 255
    t.integer  "user_id",          limit: 4
    t.string   "ip",               limit: 255
    t.text     "user_agent",       limit: 65535
    t.text     "referrer",         limit: 65535
    t.string   "referring_domain", limit: 255
    t.text     "landing_page",     limit: 65535
    t.string   "browser",          limit: 255
    t.string   "os",               limit: 255
    t.string   "device_type",      limit: 255
    t.string   "country",          limit: 255
    t.string   "region",           limit: 255
    t.string   "city",             limit: 255
    t.string   "utm_source",       limit: 255
    t.string   "utm_medium",       limit: 255
    t.string   "utm_term",         limit: 255
    t.string   "utm_content",      limit: 255
    t.string   "utm_campaign",     limit: 255
    t.string   "app_version",      limit: 255
    t.string   "os_version",       limit: 255
    t.string   "platform",         limit: 255
    t.datetime "started_at"
  end

  add_index "ahoy_visits", ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true, using: :btree

  create_table "disgrads", force: :cascade do |t|
    t.string   "fname",            limit: 255
    t.string   "lname",            limit: 255
    t.integer  "year",             limit: 4
    t.string   "mprof",            limit: 255
    t.string   "current_location", limit: 255
    t.string   "link",             limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "keylinks", force: :cascade do |t|
    t.integer "keylinkid", limit: 4
    t.string  "keytype",   limit: 255
    t.integer "keywordid", limit: 4
    t.integer "personID",  limit: 4
  end

  add_index "keylinks", ["keylinkid"], name: "index_keylinks_on_keylinkid", using: :btree

  create_table "keywords", force: :cascade do |t|
    t.string  "tag",       limit: 255
    t.integer "keywordid", limit: 4
  end

  add_index "keywords", ["keywordid"], name: "index_keywords_on_keywordid", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "fname",      limit: 255
    t.string   "lname",      limit: 255
    t.string   "user_name",  limit: 255
    t.string   "auth_id",    limit: 255
    t.string   "school",     limit: 255
    t.string   "building",   limit: 255
    t.string   "office",     limit: 255
    t.string   "phone",      limit: 255
    t.string   "pi1",        limit: 255
    t.string   "pi2",        limit: 255
    t.integer  "boss_id",    limit: 4
    t.text     "interest",   limit: 65535
    t.text     "research",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "position",   limit: 255
    t.string   "title",      limit: 255
    t.string   "prefix",     limit: 255
    t.boolean  "search",     limit: 1
    t.string   "lab_name",   limit: 255
    t.string   "labweb",     limit: 255
    t.string   "grantlink",  limit: 255
    t.string   "pubmed",     limit: 255
    t.string   "email",      limit: 255
    t.string   "scholar",    limit: 255
    t.string   "sci_index",  limit: 255
    t.date     "startdate"
    t.date     "graddate"
    t.integer  "reskeyID",   limit: 4
  end

  add_index "people", ["boss_id"], name: "index_people_on_boss_id", using: :btree
  add_index "people", ["reskeyID"], name: "index_people_on_reskeyID", using: :btree

  create_table "pubs", force: :cascade do |t|
    t.integer  "person_id",  limit: 4
    t.string   "pubmed_id",  limit: 255
    t.string   "journal",    limit: 255
    t.string   "title",      limit: 255
    t.string   "auth_id",    limit: 255
    t.text     "authors",    limit: 65535
    t.string   "pages",      limit: 255
    t.integer  "date",       limit: 4
    t.string   "type",       limit: 255
    t.string   "link",       limit: 255
    t.string   "notes",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "file",       limit: 255
  end

  add_index "pubs", ["person_id"], name: "index_pubs_on_person_id", using: :btree

  create_table "tickets", force: :cascade do |t|
    t.string   "category",       limit: 255
    t.string   "requestor_name", limit: 255
    t.string   "requestor_lab",  limit: 255
    t.string   "contact",        limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.text     "request",        limit: 65535
    t.text     "requested_by",   limit: 65535
    t.string   "subcategory",    limit: 255
    t.string   "status",         limit: 255,   default: "New"
    t.text     "notes",          limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
