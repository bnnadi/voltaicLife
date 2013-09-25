class Search < ActiveRecord::Base
  attr_accessible :artist, :venue, :zipcode
  
  CHOICES = ['artist', 'venue', 'zipcode']
end
