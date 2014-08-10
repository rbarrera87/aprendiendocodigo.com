class Register < ActiveRecord::Base
  validates :name, :email, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_format_of :cell_phone, with: /[0-9]+/, if: lambda { |reg| !reg.cell_phone.blank? }
  validates_uniqueness_of :email
end
