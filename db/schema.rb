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

ActiveRecord::Schema.define(version: 2021_01_30_130837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "chat_id"
    t.string "recommend"
    t.integer "inquiry_id"
    t.integer "event_id"
    t.string "age_range", null: false
    t.string "gender", null: false
    t.integer "purchase_history_id"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "product_id"
    t.integer "customer_id"
    t.string "consultant"
    t.string "request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "timeslot"
    t.date "date"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "product_subtitle", null: false
    t.string "product_image", null: false
    t.text "product_hl_description", null: false
    t.text "product_ll_description"
    t.integer "product_rating"
    t.text "frar_comment", null: false
    t.string "product_price", null: false
    t.string "review_title"
    t.text "review_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "product_category"
    t.string "product_url"
  end

  create_table "room_messages", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "customer_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_room_messages_on_customer_id"
    t.index ["room_id"], name: "index_room_messages_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_rooms_on_name", unique: true
  end

  add_foreign_key "room_messages", "customers"
  add_foreign_key "room_messages", "rooms"
end
