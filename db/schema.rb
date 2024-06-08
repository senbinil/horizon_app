# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 20_240_606_015_855) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.string 'code'
    t.text 'description'
    t.decimal 'price', precision: 10, scale: 2
    t.string 'category', default: 'general'
    t.string 'image'
    t.integer 'status', default: 0
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category'], name: 'index_products_on_category'
    t.index ['code'], name: 'index_products_on_code'
    t.index ['name'], name: 'index_products_on_name'
  end
end
