# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_09_232804) do

  create_table "admin_orgs", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_admin_orgs_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "date"
    t.string "private"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "guests", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_guests_on_event_id"
    t.index ["user_id"], name: "index_guests_on_user_id"
  end

  create_table "inboxes", force: :cascade do |t|
    t.integer "user_from"
    t.string "message"
    t.integer "user_to"
    t.integer "inboxes_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inboxes_id"], name: "index_inboxes_on_inboxes_id"
    t.index ["user_id"], name: "index_inboxes_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_members_on_event_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.integer "messages_id"
    t.integer "inbox_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mailbox_id"], name: "index_messages_on_inbox_id"
    t.index ["messages_id"], name: "index_messages_on_messages_id"
  end

  create_table "option_dates", force: :cascade do |t|
    t.string "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.integer "admin_org_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_org_id"], name: "index_organizations_on_admin_org_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "system_admin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["system_admin_id"], name: "index_profiles_on_system_admin_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "system_admins", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_system_admins_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "mail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string "date"
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.integer "votes_id"
    t.integer "option_dates_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_votes_on_event_id"
    t.index ["option_dates_id"], name: "index_votes_on_option_dates_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
    t.index ["votes_id"], name: "index_votes_on_votes_id"
  end

  add_foreign_key "admin_orgs", "users"
  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "events", "users"
  add_foreign_key "guests", "events"
  add_foreign_key "guests", "users"
  add_foreign_key "inboxes", "inboxes", column: "inboxes_id"
  add_foreign_key "inboxes", "users"
  add_foreign_key "members", "events"
  add_foreign_key "members", "users"
  add_foreign_key "messages", "mailboxes"
  add_foreign_key "messages", "messages", column: "messages_id"
  add_foreign_key "organizations", "admin_orgs"
  add_foreign_key "profiles", "system_admins"
  add_foreign_key "profiles", "users"
  add_foreign_key "system_admins", "users"
  add_foreign_key "votes", "events"
  add_foreign_key "votes", "option_dates", column: "option_dates_id"
  add_foreign_key "votes", "users"
  add_foreign_key "votes", "votes", column: "votes_id"
end
