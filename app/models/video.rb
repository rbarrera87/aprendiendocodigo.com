class Video < ActiveRecord::Base
  belongs_to :video
  belongs_to :course

  validates_presence_of :name, :url, :course_id

  before_save :set_slug

  private
  def set_slug
    self.slug = name.parameterize
  end

end
