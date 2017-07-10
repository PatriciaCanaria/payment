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

ActiveRecord::Schema.define(version: 20170707015315) do

  create_table "apps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "merchant_id"
    t.string "code"
    t.string "name"
    t.string "description"
    t.string "url"
    t.string "key"
    t.string "secret"
    t.string "source_url"
    t.string "source_callback_success_url"
    t.string "source_callback_fail_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchant_id"], name: "fk_rails_dfff2a5f47"
  end

  create_table "contact_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "code"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "contact_type_id"
    t.string "details"
    t.string "contactable_type"
    t.bigint "contactable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_type_id"], name: "fk_rails_b8815787ee"
    t.index ["contactable_id"], name: "fk_rails_e52caf708d"
  end

  create_table "id_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "code"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ids", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "id_type_id"
    t.string "details"
    t.string "idable_type"
    t.bigint "idable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_type_id"], name: "fk_rails_50ac507f32"
    t.index ["idable_id"], name: "fk_rails_28d7a4fb38"
  end

  create_table "merchants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "password"
    t.string "company_name"
    t.string "company_address"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.timestamp "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_apis", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "payment_provider_id"
    t.bigint "merchant_id"
    t.string "app_id"
    t.string "api_key"
    t.string "api_secret"
    t.string "account_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["merchant_id"], name: "fk_rails_9a7aa7bd1f"
  end

  create_table "payment_providers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "code"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apps", "merchants"
  add_foreign_key "contacts", "contact_types"
  add_foreign_key "contacts", "merchants", column: "contactable_id"
  add_foreign_key "ids", "id_types", column: "idable_id"
  add_foreign_key "ids", "merchants", column: "id_type_id"
  add_foreign_key "payment_apis", "merchants"
end
