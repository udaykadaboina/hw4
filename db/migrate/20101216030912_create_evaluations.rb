class CreateEvaluations < ActiveRecord::Migration
  def self.up
    create_table :evaluations do |t|
      t.integer :member_id
      t.integer :met_your_expectations
      t.text :comment1
      t.integer :quality_of_meals_and_snacks
      t.text :comment2
      t.integer :seminar_room_and_facilities
      t.text :comment3
      t.integer :presentation_style
      t.text :comment4
      t.integer :pace_of_instruction_was_appropriate_for_learning_goals
      t.text :comment5
      t.integer :able_to_effectively_answer_questions
      t.text :comment6
      t.integer :clearly_written_and_mistake_free
      t.text :comment7
      t.integer :sufficient_detail_for_the_topics_covered
      t.text :comment8
      t.text :additional_comments

      t.timestamps
    end
  end

  def self.down
    drop_table :evaluations
  end
end
