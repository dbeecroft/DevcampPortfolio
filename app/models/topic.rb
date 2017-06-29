<<<<<<< HEAD
class Topic <ApplicationRecord
  validates_presence_of :title
  
  has_many :blogs
end
=======
class Topic < ApplicationRecord
  validates_presence_of :title
  
  has_many :blogs
end
>>>>>>> 9d9375d4f94247d5aa5515154ad5610052c3646c
