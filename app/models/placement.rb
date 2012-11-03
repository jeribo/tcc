class Placement < ActiveRecord::Base
  belongs_to :person
  attr_accessible :address, :city, :complement, :district, :state, :type_address, :zip
end
