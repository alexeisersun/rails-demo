class AddScoreToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :positive_votes, :integer, default: 0, null: false
    add_column :questions, :negative_votes, :integer, default: 0, null: false
  end
end
