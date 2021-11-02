class AddAnswerToExams < ActiveRecord::Migration[5.0]
  def change
    add_column :exams, :answer, :string
  end
end
