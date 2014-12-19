class Answer < ActiveRecord::Base
  belongs_to :question

  validates :answer,  :question, presence: true
end
