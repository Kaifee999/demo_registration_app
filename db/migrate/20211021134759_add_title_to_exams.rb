class AddTitleToExams < ActiveRecord::Migration[5.0]
  def change
    add_column :exams, :title, :string
  end
end
