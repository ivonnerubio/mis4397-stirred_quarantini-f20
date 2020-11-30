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

ActiveRecord::Schema.define(version: 20201120033833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string   "title"
    t.string   "mission_statement"
    t.string   "journal_description"
    t.string   "editorial_board"
    t.string   "string"
    t.string   "editorial_name"
    t.string   "editorial_position"
    t.string   "editorial_about_me"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "articles", force: :cascade do |t|
    t.float    "article_rating"
    t.text     "abstract"
    t.text     "introduction"
    t.text     "case_presentation"
    t.text     "discussion"
    t.text     "conclusion"
    t.text     "appendice"
    t.text     "references"
    t.text     "disclosures_agreements"
    t.text     "forum_comments"
    t.string   "categories"
    t.string   "keywords"
    t.string   "article_title"
    t.string   "article_author"
    t.string   "string"
    t.string   "article_info"
    t.float    "figures"
    t.integer  "metrics"
    t.string   "pdf_download"
    t.string   "linked_in"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "whats_app"
    t.string   "email"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.string   "image"
    t.string   "author_name"
    t.string   "post_type"
<<<<<<< HEAD
    t.string   "image_url"
=======
>>>>>>> 6c3dfaba8868eafaed03a2da6480df091ed0b3f8
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "blog_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_comments_on_blog_id", using: :btree
  end

  create_table "f_dalexis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_dcarries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_develyns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_dhalles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_djosephs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_dmikaels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_dowais", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_dpetras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_droberts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "f_dzakirs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string   "title"
    t.string   "categories"
    t.string   "category_name"
    t.string   "article_title"
    t.text     "article_description"
    t.string   "date_published"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "join_nows", force: :cascade do |t|
    t.string   "title"
    t.string   "string"
    t.string   "data_text"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medical_students", force: :cascade do |t|
    t.string   "name"
    t.string   "education"
    t.text     "background"
    t.text     "award"
    t.text     "certification"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "research_submissions", force: :cascade do |t|
    t.string   "page_title"
    t.string   "string"
    t.string   "submission_title"
    t.string   "body_of_submission"
    t.string   "text"
    t.string   "comments"
    t.string   "authorID"
    t.string   "author_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "sign_ins", force: :cascade do |t|
    t.string   "title"
    t.string   "string"
    t.string   "web_data"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "title"
    t.string   "string"
    t.string   "category_title"
    t.string   "category_description"
    t.string   "text"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "specifics", force: :cascade do |t|
    t.string   "Specialty"
    t.string   "category_name"
    t.string   "string"
    t.text     "description"
    t.string   "text"
    t.string   "data_type"
    t.string   "data_title"
    t.string   "authors"
    t.string   "authorID"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "link"
    t.text     "introduction"
    t.string   "languages"
    t.string   "current_affiliation"
    t.string   "interests"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "comments", "blogs"
end
