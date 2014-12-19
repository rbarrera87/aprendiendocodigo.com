class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name, null: false
      t.references :level, index: true

      t.timestamps
    end
  end
end
