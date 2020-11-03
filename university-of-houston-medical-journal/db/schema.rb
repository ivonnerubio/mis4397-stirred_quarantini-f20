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

ActiveRecord::Schema.define(version: 20201103174057) do

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
    t.string   "string"
    t.string   "recent_posts"
    t.string   "text"
    t.string   "article_title"
    t.string   "archives"
    t.integer  "year"
    t.string   "post_title"
    t.string   "body"
    t.string   "author_name"
    t.string   "authorID"
    t.string   "post_type"
    t.string   "comment_section"
    t.string   "ad_space"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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

end
