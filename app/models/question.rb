class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :quiz

  validates :question, :quiz, presence: true

  def correct_answers
    answers.where(answers: { is_correct: true })
  end

end
