class Portfolio < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
    validates_presence_of :title, :body, :main_image, :thumb_image
=======
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  def self.angular
    where(subtitle: 'Angular')     
  end
  
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
>>>>>>> 9d9375d4f94247d5aa5515154ad5610052c3646c
=======
  validates_presence_of :title, :body, :main_image, :thumb_image
>>>>>>> de56027a934b4ee4efa95f38d5e53232af803044
end
