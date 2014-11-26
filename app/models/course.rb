class Course < ActiveRecord::Base
  belongs_to :category
  has_many :videos
  validates_presence_of :name, :image_url
end
