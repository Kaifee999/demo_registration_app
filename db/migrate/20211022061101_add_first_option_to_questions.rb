class AddFirstOptionToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :first_option, :string
  end
end
