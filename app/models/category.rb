class Category < ActiveRecord::Base
  has_many :courses
  validates_presence_of :name
end
