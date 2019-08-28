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

ActiveRecord::Schema.define(version: 2019_08_27_130101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guides", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.integer "duration"
    t.text "overview"
    t.string "location"
    t.integer "distance"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_guides_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "guide_id"
    t.bigint "user_id"
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_orders_on_guide_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.text "content"
    t.bigint "guide_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_reviews_on_guide_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "stops", force: :cascade do |t|
    t.bigint "guide_id"
    t.string "name"
    t.text "description"
    t.string "image"
    t.integer "list_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["guide_id"], name: "index_stops_on_guide_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "avatar"
    t.text "bio"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "guides", "users"
  add_foreign_key "orders", "guides"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "guides"
  add_foreign_key "reviews", "users"
  add_foreign_key "stops", "guides"
end
