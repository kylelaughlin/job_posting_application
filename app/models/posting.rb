class Posting < ActiveRecord::Base
  validates :company, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
