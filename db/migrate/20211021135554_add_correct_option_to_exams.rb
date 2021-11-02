class AddCorrectOptionToExams < ActiveRecord::Migration[5.0]
  def change
    add_column :exams, :correct_option, :string
  end
end
