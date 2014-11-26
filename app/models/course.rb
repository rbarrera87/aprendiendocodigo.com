class Course < ActiveRecord::Base
  belongs_to :category
  has_many :levels
  has_many :videos, through: :levels
  validates_presence_of :name, :image_url
end
