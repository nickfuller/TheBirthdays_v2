class Gig < ActiveRecord::Base
  attr_accessible :city, :cover, :date, :poster, :street, :ticket_price, :venue, :zipcode
end
