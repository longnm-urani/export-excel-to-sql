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

ActiveRecord::Schema[7.0].define(version: 2023_06_15_073234) do
  create_table "personality_patterns", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "cp_severity"
    t.integer "np_kindness"
    t.integer "a_logic"
    t.integer "fc_free_spirited"
    t.integer "ac_adaptive"
    t.integer "score_level"
    t.string "pattern_number_1024"
    t.string "pattern_name_1024"
    t.string "pattern_number_31"
    t.string "result_content_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_questions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "quiz_scope_name"
    t.text "question_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "result_contents", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "result_content_name"
    t.string "result_content_slogan"
    t.text "result_content_personality"
    t.text "result_content_interpersonal_relations"
    t.text "result_content_view_of_love"
    t.text "result_content_job_awareness"
    t.text "result_content_advice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
