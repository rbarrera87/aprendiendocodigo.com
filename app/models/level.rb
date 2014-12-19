class Level < ActiveRecord::Base
  belongs_to :course
  has_many :videos
  has_one :quiz
end
