class AddSubjectToExams < ActiveRecord::Migration[5.0]
  def change
    add_column :exams, :subject, :string
  end
end
