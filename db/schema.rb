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

ActiveRecord::Schema.define(version: 20171205132111) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "adminsessions", force: :cascade do |t|
    t.string "username"
    t.datetime "startdatetime"
    t.datetime "enddatetime"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookingitems", force: :cascade do |t|
    t.integer "showingid"
    t.string "filmname"
    t.text "seat"
    t.decimal "price"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_bookingitems_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "bookingdate"
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "customersessions", force: :cascade do |t|
    t.string "customeremail"
    t.datetime "startdatetime"
    t.datetime "enddatetime"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "filmname"
    t.text "cast"
    t.text "plot"
    t.binary "poster"
    t.string "trailer"
    t.integer "runtime"
    t.string "addedby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filmname"], name: "index_films_on_filmname"
  end

  create_table "screens", force: :cascade do |t|
    t.string "screenname"
    t.integer "rows"
    t.integer "width"
    t.string "addedby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["screenname"], name: "index_screens_on_screenname"
  end

  create_table "showings", force: :cascade do |t|
    t.datetime "slot"
    t.string "screenname"
    t.string "filmname"
    t.decimal "price"
    t.string "addedby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
