class AddOptionsToExams < ActiveRecord::Migration[5.0]
  def change
    add_column :exams, :options, :string
  end
end
