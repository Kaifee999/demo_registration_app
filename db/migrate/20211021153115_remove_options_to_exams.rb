class RemoveOptionsToExams < ActiveRecord::Migration[5.0]
  def change
    remove_column :exams, :options, :string
  end
end
