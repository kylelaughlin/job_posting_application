class Posting < ActiveRecord::Base
  validates :company, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true


  def self.search(query)
    where("company like ?", "%#{query}%")
  end
end
