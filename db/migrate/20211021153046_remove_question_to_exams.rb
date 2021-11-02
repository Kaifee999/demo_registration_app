class RemoveQuestionToExams < ActiveRecord::Migration[5.0]
  def change
    remove_column :exams, :question, :string
  end
end
