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

ActiveRecord::Schema.define(version: 2020_06_20_120145) do

  create_table "addresses", force: :cascade do |t|
    t.integer "member_id", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "address_name", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_addresses_on_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.string "customer_id", null: false
    t.string "card_id", null: false
    t.string "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "member_id", null: false
    t.integer "quantity", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_cart_items_on_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.string "genre_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_genres_on_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "genre_id", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.text "introduction", null: false
    t.string "item_image_id"
    t.boolean "status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_items_on_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nick_name", null: false
    t.string "name", null: false
    t.string "kana_name", null: false
    t.boolean "status", default: true, null: false
    t.string "member_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "item_id", null: false
    t.integer "price", null: false
    t.integer "quantity", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_order_details_on_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "payment", null: false
    t.boolean "delivery", default: true, null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "address_name", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_orders_on_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "item_id", null: false
    t.string "title", null: false
    t.text "comment", null: false
    t.float "rating", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_reviews_on_id"
  end

end
