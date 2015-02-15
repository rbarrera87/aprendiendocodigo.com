class Dashboard < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  belongs_to :level

  def percentage
    (levels_completed * 100)/course.levels.count
  end
end
