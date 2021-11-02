class RemoveAnswerToExams < ActiveRecord::Migration[5.0]
  def change
    remove_column :exams, :answer, :string
  end
end
