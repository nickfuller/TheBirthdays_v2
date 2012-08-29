class Venue < ActiveRecord::Base
  attr_accessible :city, :name, :state, :street, :url, :zip
end
