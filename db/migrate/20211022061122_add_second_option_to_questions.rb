class AddSecondOptionToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :second_option, :string
  end
end
