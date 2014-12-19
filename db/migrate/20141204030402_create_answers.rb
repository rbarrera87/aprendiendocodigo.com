class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer, null: false
      t.boolean :is_correct, default: false
      t.references :question, index: true

      t.timestamps
    end
  end
end
