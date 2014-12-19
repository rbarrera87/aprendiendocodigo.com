require 'rails_helper'

RSpec.describe Question, :type => :model do
  it { should validate_presence_of :question }
  it { should validate_presence_of :quiz }
  it { should have_many :answers }
  it { should belong_to :quiz }
  describe "correct answers" do
    let(:question) { FactoryGirl.create :question }
    let(:answer) { FactoryGirl.create :answer, question: question, is_correct: false }
    it "should get all the correct answers" do
      correct_answer = FactoryGirl.create :answer, question: question, is_correct: true
      question.correct_answers.should == [correct_answer]
    end
    it "should have any correct answer" do
      question.correct_answers.count.should be_zero
    end
  end
end
