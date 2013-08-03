class Program < ActiveRecord::Base
  attr_accessible :title, :description, :url, :director_id

  validates :title, presence: true, length: { maximum: 100 }
  validates :director_id, presence: true  

  belongs_to :director
  has_many :sessions
  has_and_belongs_to_many :skills
end
