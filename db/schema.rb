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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101216030912) do

  create_table "evaluations", :force => true do |t|
    t.integer  "member_id"
    t.integer  "met_your_expectations"
    t.text     "comment1"
    t.integer  "quality_of_meals_and_snacks"
    t.text     "comment2"
    t.integer  "seminar_room_and_facilities"
    t.text     "comment3"
    t.integer  "presentation_style"
    t.text     "comment4"
    t.integer  "pace_of_instruction_was_appropriate_for_learning_goals"
    t.text     "comment5"
    t.integer  "able_to_effectively_answer_questions"
    t.text     "comment6"
    t.integer  "clearly_written_and_mistake_free"
    t.text     "comment7"
    t.integer  "sufficient_detail_for_the_topics_covered"
    t.text     "comment8"
    t.text     "additional_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
