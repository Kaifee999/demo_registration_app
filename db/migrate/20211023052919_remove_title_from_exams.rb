class RemoveTitleFromExams < ActiveRecord::Migration[5.0]
  def change
    remove_column :exams, :title, :string
  end
end
