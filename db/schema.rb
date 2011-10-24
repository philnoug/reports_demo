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

ActiveRecord::Schema.define(:version => 20110825153312) do

  create_table "products", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_lines", :force => true do |t|
    t.integer  "report_id"
    t.string   "pk"
    t.integer  "voie"
    t.string   "file"
    t.string   "conso"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lat"
    t.string   "lon"
    t.string   "product_name"
    t.integer  "product_price"
  end

  create_table "reports", :force => true do |t|
    t.integer  "user_id"
    t.string   "client"
    t.string   "chantier"
    t.boolean  "isNight"
    t.integer  "temperature"
    t.string   "sky_state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "submitted"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
