class StudentAnswersController < ApplicationController

	def index
	end

	def new	
		@exam_id = params[:exam_id]
		@question_id = params[:question_id]
		@user_id = params[:user_id]
	end

	def create_student_answer
	    StudentAnswer.create(exam_id: params[:exam_id], user_id: current_user.id, answer: params[:answer], question_id: params[:question_id])
        puts params
    end

    def show_student_answer
        @questions = Exam.questions.find(params[:question_id])
        @student_answers = StudentAnswer.find(params[:answer_id])
    end

    def exam_questions
    	@exam = Exam.find(params[:exam_id])
		@questions = @exam.questions
    end
end  

