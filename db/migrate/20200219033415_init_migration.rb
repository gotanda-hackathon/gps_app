class InitMigration < ActiveRecord::Migration[5.1]
  def up
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
      t.timestamps
    end

    create_table "cafe_crowded_points", force: :cascade do |t|
      t.integer "cafe_id", comment: "カフェ"
      t.integer "day_of_week", default: 0, null: false, comment: "曜日"
      t.integer "crowded_point", default: 0, null: false, comment: "混雑ポイント"
      t.string "comment", comment: "コメント"
      t.timestamps
    end

    create_table "users", force: :cascade do |t|
      t.string "name"
      t.string "email"
      t.string "encrypted_password", default: "", null: false
      t.timestamps
    end

    create_table "cafe_customers", force: :cascade do |t|
      t.string "name"
      t.integer "user_id", default: 0, null: false, comment: "ユーザー"
      t.integer "cafe_id", default: 0, null: false, comment: "カフェ"
      t.integer "status", default: 0, null: false, comment: "ステータス(いる・いく)"
      t.timestamps
    end

    create_table "message_rooms", force: :cascade do |t|
      t.integer "stay_user_id", default: 0, null: false, comment: "いるよユーザー"
      t.integer "going_user_id", default: 0, null: false, comment: "いくよユーザー"
      t.integer "cafe_id", default: 0, null: false, comment: "ユーザー"
      t.integer "room_status", default: 0, null: false, comment: "closeとかopenとか、いらんかも"
      t.timestamps
    end

    create_table "messages", force: :cascade do |t|
      t.integer "message_room_id", default: 0, null: false, comment: "メッセージルーム"
      t.text "content", comment: "メッセージルーム"
      t.datetime "send_at", comment: "送信日時"
      t.timestamps
    end
  end
end
