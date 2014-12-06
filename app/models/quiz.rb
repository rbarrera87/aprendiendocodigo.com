class Quiz < ActiveRecord::Base
  belongs_to :level
  has_many :questions

  validates :name, :level, presence: true
end
