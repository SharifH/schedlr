class Director < User
  attr_accessible :company
  
  has_one :user, :as => :rolable  
  has_many :programs
  has_many :sessions, through: :programs

end
