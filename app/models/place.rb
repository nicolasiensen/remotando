class Place < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name
  acts_as_gmappable check_process: false

  def gmaps4rails_address
    "#{self.address}, Rio de Janeiro, Brasil"
  end
end
