class RemoveCorrectOptionToExams < ActiveRecord::Migration[5.0]
  def change
    remove_column :exams, :correct_option, :string
  end
end
