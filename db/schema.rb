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

ActiveRecord::Schema.define(version: 20171202090233) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin", default: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "animals", force: :cascade do |t|
    t.string "name", null: false
    t.string "url"
    t.integer "kind"
    t.boolean "completed?", default: false
    t.datetime "completed_time"
    t.integer "reach"
    t.integer "engagement"
    t.integer "view"
    t.bigint "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farm_id"], name: "index_animals_on_farm_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.datetime "end_time"
    t.boolean "completed?", default: false
    t.integer "t_reach", default: 0
    t.integer "t_engagement", default: 0
    t.integer "t_view", default: 0
    t.bigint "user_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_campaigns_on_category_id"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facebook_posts", force: :cascade do |t|
    t.string "title", null: false
    t.integer "medium"
    t.string "description"
    t.string "url"
    t.string "access_token"
    t.string "url_postid"
    t.datetime "end_time"
    t.boolean "completed?", default: false
    t.integer "people_reached", default: 0
    t.integer "impressions", default: 0
    t.integer "stories", default: 0
    t.integer "like", default: 0
    t.integer "love", default: 0
    t.integer "haha", default: 0
    t.integer "wow", default: 0
    t.integer "sad", default: 0
    t.integer "angry", default: 0
    t.integer "comments", default: 0
    t.integer "shares", default: 0
    t.integer "post_clicks", default: 0
    t.integer "link_clicks", default: 0
    t.integer "other_clicks", default: 0
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_facebook_posts_on_campaign_id"
  end

  create_table "farms", force: :cascade do |t|
    t.string "title", null: false
    t.string "url"
    t.boolean "completed?", default: false
    t.datetime "completed_time"
    t.integer "t_reach"
    t.integer "t_engagement"
    t.integer "t_views"
    t.bigint "user_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_farms_on_location_id"
    t.index ["user_id"], name: "index_farms_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "file_location", null: false
    t.string "caption"
    t.bigint "facebook_post_id"
    t.bigint "tweet_post_id"
    t.bigint "instagram_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facebook_post_id"], name: "index_images_on_facebook_post_id"
    t.index ["instagram_post_id"], name: "index_images_on_instagram_post_id"
    t.index ["tweet_post_id"], name: "index_images_on_tweet_post_id"
  end

  create_table "instagram_posts", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "url"
    t.string "end_time"
    t.boolean "completed?", default: false
    t.integer "likes", default: 0
    t.integer "comments", default: 0
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaign_id"], name: "index_instagram_posts_on_campaign_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "place", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweet_posts", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "url"
    t.datetime "end_time"
    t.boolean "completed?", default: false
    t.integer "reach", default: 0
    t.integer "engagement", default: 0
    t.integer "impressions", default: 0
    t.integer "total_engagements", default: 0
    t.integer "media_engagements", default: 0
    t.integer "detail_expands", default: 0
    t.integer "retweets", default: 0
    t.integer "likes", default: 0
    t.integer "link_clicks", default: 0
    t.integer "profile_clicks", default: 0
    t.integer "replies", default: 0
    t.integer "follows", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "campaign_id"
    t.index ["campaign_id"], name: "index_tweet_posts_on_campaign_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campaigns", "categories"
  add_foreign_key "campaigns", "users"
  add_foreign_key "facebook_posts", "campaigns"
  add_foreign_key "instagram_posts", "campaigns"
  add_foreign_key "tweet_posts", "campaigns"
end
