class Session < Program
  attr_accessible :start, :end, :day, :program_id

  validates :start, presence: true
  validates :end, presence: true
  validates :program_id, presence: true

  belongs_to :program
  has_many :sessions
  has_and_belongs_to_many :skills  
end
