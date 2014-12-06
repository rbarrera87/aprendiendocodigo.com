require 'rails_helper'

RSpec.describe Question, :type => :model do
  it { should validate_presence_of :question }
  it { should validate_presence_of :quiz }
  it { should have_many :answers }
  it { should belong_to :quiz }
end
