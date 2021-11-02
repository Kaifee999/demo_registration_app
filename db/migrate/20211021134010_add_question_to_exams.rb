class AddQuestionToExams < ActiveRecord::Migration[5.0]
  def change
    add_column :exams, :question, :string
  end
end
