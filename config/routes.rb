Rails.application.routes.draw do
  root 'exams#index'
  get '/exams' => 'exams#index'
  get '/exams/new' => 'exams#new'
  post '/exams/create_exam' => 'exams#create_exam'
  delete '/exams/delete_exam/:exam_id' => 'exams#delete_exam', as: :delete_exam
  get '/exams/show_exam/:exam_id' => 'exams#show_exam', as: :show_exam
  get '/questions/index' => 'questions#index'
  get '/exams/:exam_id/questions/new' => 'questions#new', as: :question_new
  post '/exams/:exam_id/questions/create_question' => 'questions#create_question', as: :create_question
  get '/exams/:exam_id/questions/show_question' => 'questions#show_question', as: :show_question
  get '/student_answers/index' => 'student_answers#index', as: :student_answer_index
  get '/exams/:exam_id/questions/:question_id/student_answers/new' => 'student_answers#new', as: :student_answer_new
  post '/exams/:exam_id/questions/student_answers/create_student_answer' => 'student_answers#create_student_answer', as: :student_answer_create
  get '/exams/:exam_id/questions/question_id/student_answers/show_student_answer' => 'student_answers#show_student_answer', as: :student_answer_show
  get '/exams/:exam_id/questions/' => 'student_answers#exam_questions', as: :exam_questions
  get '/users/index' => 'users#index'
  get 'users/:user_id/view_result' => 'users#view_result', as: :view_result


   devise_for :users, :controllers => {registrations: 'registrations'}
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
