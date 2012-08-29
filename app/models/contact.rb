class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :role
end
