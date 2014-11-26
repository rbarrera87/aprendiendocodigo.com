class Video < ActiveRecord::Base
  belongs_to :level

  validates_presence_of :name, :url

  before_save :set_slug

  private
  def set_slug
    self.slug = name.parameterize
  end

end
