class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :views_count, null: false, default: 0

      t.timestamps
    end
  end
end
