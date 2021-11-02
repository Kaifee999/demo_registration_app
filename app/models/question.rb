class Question < ApplicationRecord
	belongs_to :exam
	has_many :student_answers

	def score(user_id)
		debugger
	end
end
