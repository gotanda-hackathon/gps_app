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

ActiveRecord::Schema.define(version: 20200219033415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cafe_crowded_points", force: :cascade do |t|
    t.integer "cafe_id", comment: "カフェ"
    t.integer "day_of_week", default: 0, null: false, comment: "曜日"
    t.integer "crowded_point", default: 0, null: false, comment: "混雑ポイント"
    t.string "comment", comment: "コメント"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cafe_customers", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", default: 0, null: false, comment: "ユーザー"
    t.integer "cafe_id", default: 0, null: false, comment: "カフェ"
    t.integer "status", default: 0, null: false, comment: "ステータス(いる・いく)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cafes", force: :cascade do |t|
    t.string "name", null: false, comment: "カフェ名"
    t.string "pref", comment: "都道府県"
    t.string "zip", default: "", null: false, comment: "郵便番号"
    t.string "city", default: "", null: false, comment: "市区町村"
    t.string "address", default: "", null: false, comment: "番地以降"
    t.string "building", default: "", null: false, comment: "建物名"
    t.string "tel", default: "", null: false, comment: "電話番号"
    t.string "sales_time", default: "", null: false, comment: "営業時間"
    t.string "shop_url", default: "", null: false, comment: "URL"
    t.text "wifi_info", default: "", null: false, comment: "wifi情報"
    t.text "smoking_info", default: "", null: false, comment: "喫煙情報"
    t.text "review", default: "", null: false, comment: "レビュー"
    t.text "recommend", default: "", null: false, comment: "おすすめポイント"
    t.text "caution", default: "", null: false, comment: "注意事項"
    t.text "remark", default: "", null: false, comment: "備考"
    t.text "access_info", default: "", null: false, comment: "アクセス情報"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message_rooms", force: :cascade do |t|
    t.integer "stay_user_id", default: 0, null: false, comment: "いるよユーザー"
    t.integer "going_user_id", default: 0, null: false, comment: "いくよユーザー"
    t.integer "cafe_id", default: 0, null: false, comment: "ユーザー"
    t.integer "room_status", default: 0, null: false, comment: "closeとかopenとか、いらんかも"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "message_room_id", default: 0, null: false, comment: "メッセージルーム"
    t.text "content", comment: "メッセージルーム"
    t.datetime "send_at", comment: "送信日時"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
