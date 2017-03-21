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

ActiveRecord::Schema.define(version: 20170318190333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.string   "calendario"
    t.datetime "fecha_corte"
    t.integer  "status_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "fullname"
    t.string   "direccion"
    t.string   "tel"
    t.string   "cel"
    t.string   "email"
    t.datetime "fecha_inicio"
    t.datetime "fecha_termino"
    t.integer  "client_status_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "sectorial_id"
    t.integer  "status_id"
    t.integer  "payment_type_id"
    t.string   "ip_address"
    t.integer  "product_id"
  end

  create_table "ip_addresses", force: :cascade do |t|
    t.string   "ip_address"
    t.integer  "sectorial_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "status_id"
  end

  create_table "ip_statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "calendar_id"
    t.integer  "client_id"
    t.datetime "fecha_corte"
    t.datetime "fecha_limite"
    t.float    "saldo"
    t.integer  "folio",        limit: 8
    t.integer  "status_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "mb_subida"
    t.integer  "mb_bajada"
    t.float    "costo"
    t.integer  "ip_status_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "status_id"
  end

  create_table "sectorials", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ip_address"
    t.integer  "limite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "tabla"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "login_count",        default: 0, null: false
    t.integer  "failed_login_count", default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
  end

end
