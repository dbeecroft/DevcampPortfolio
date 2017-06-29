class Skill < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
    validates_presence_of :title, :percent_utilized
=======
  include Placeholder
  validates_presence_of :title, :percent_utilized
  
  after_initialize :set_defaults
  
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
>>>>>>> 9d9375d4f94247d5aa5515154ad5610052c3646c
=======
  validates_presence_of :title, :percent_utilized
>>>>>>> de56027a934b4ee4efa95f38d5e53232af803044
end
