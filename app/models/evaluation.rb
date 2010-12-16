class Evaluation < ActiveRecord::Base
	belongs_to :member
	validates :member_id, :presence => true
	validates :met_your_expectations, :presence => true
	validates :quality_of_meals_and_snacks, :presence => true
	validates :seminar_room_and_facilities, :presence => true
	validates :presentation_style, :presence => true
	validates :pace_of_instruction_was_appropriate_for_learning_goals, :presence => true
	validates :able_to_effectively_answer_questions, :presence => true
	validates :clearly_written_and_mistake_free, :presence => true
	validates :sufficient_detail_for_the_topics_covered, :presence => true
end
