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

ActiveRecord::Schema.define(version: 20140717060455) do

  create_table "Template", primary_key: "TemplateId", force: true do |t|
    t.string "TemplateName"
  end

  create_table "abouts", primary_key: "AboutUsId", force: true do |t|
    t.text    "MainContent"
    t.string  "MainImageUrl"
    t.string  "SubTitle"
    t.text    "SubTextContent"
    t.string  "SubImageUrl"
    t.integer "PageId"
  end

  create_table "banners", primary_key: "BannerId", force: true do |t|
    t.text    "BannerTextContent"
    t.string  "BackGroundUrl"
    t.integer "TestimonialId"
    t.integer "ProjectId"
  end

  create_table "home_page_banners", primary_key: "HomePageBannerId", force: true do |t|
    t.integer "Sequence"
    t.integer "HomePageId"
    t.integer "BannerId"
  end

  create_table "homepages", primary_key: "HomePageId", force: true do |t|
    t.string  "MainSectionTitle"
    t.text    "MainSectionContent"
    t.boolean "ShowService"
    t.integer "PageId"
  end

  create_table "pages", primary_key: "PageId", force: true do |t|
    t.string  "PageName"
    t.string  "PageType"
    t.string  "SEOFriendlyName"
    t.integer "Sequence"
    t.integer "ParentPage"
  end

  create_table "project_categories", primary_key: "ProjectCategoryId", force: true do |t|
    t.string  "ProjectCategory"
    t.string  "ProjectIconUrl"
    t.integer "ProjectId"
  end

  create_table "project_galleries", primary_key: "ProjectGalleryId", force: true do |t|
    t.string  "ProjectImageUrl"
    t.integer "ProjectId"
  end

  create_table "projects", primary_key: "ProjectId", force: true do |t|
    t.string   "ProjectName"
    t.datetime "ProjectDate"
    t.string   "ProjectLocation"
    t.text     "ProjectDescription"
    t.string   "SEOFriendlyName"
    t.integer  "PageId"
  end

  create_table "services", primary_key: "ServiceId", force: true do |t|
    t.string  "ServiceImageUrl"
    t.string  "ServiceName"
    t.text    "ServiceDescription"
    t.integer "PageId"
  end

  create_table "subservices", primary_key: "SubServiceId", force: true do |t|
    t.string  "SubServiceImageUrl"
    t.string  "SubServiceName"
    t.text    "SubServiceDescription"
    t.integer "PageId"
  end

  create_table "testimonials", primary_key: "TestimonialId", force: true do |t|
    t.text    "Testimonial"
    t.string  "Name"
    t.string  "RoleOrganisation"
    t.boolean "Highlighted"
    t.integer "PageId"
  end

  create_table "trainers", primary_key: "TrainerId", force: true do |t|
    t.string  "TrainerName"
    t.string  "TrainerImageUrl"
    t.string  "TrainerTitle"
    t.text    "TrainerParticular"
    t.integer "PageId"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
