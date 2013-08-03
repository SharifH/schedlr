class Director < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_one :user, :as => :rolable  

end
