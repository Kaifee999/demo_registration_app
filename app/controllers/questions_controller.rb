class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new
	end

	def create_question
		Question.create(question: params[:question],  first_option: params[:first_option],  second_option: params[:second_option],  third_option: params[:third_option],  fourth_option: params[:fourth_option], correct_option: params[:correct_option], exam_id: params[:exam_id])
        puts params
    end
end


	# def delete_question
	# 	question_id = params[:question_id]
    # exam.questions.find(question_id) 

    #   @question = Question.find(question_id)
	#   @question.destroy
	# end

	# def show_question
 #        # exam_id = params[:exam_id]
 #        # @question = Question.find(exam_id)
 #        question_id = params[:question_id]
 #        @question = Exam.questions.find(question_id) 
 #    end

