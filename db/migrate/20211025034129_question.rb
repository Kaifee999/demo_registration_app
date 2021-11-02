class Question < ActiveRecord::Migration[5.0]
  def change
      add_reference :questions, :student, foreign_key: true
  end
end
