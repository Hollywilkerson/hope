class HomeController < ApplicationController
  def index
    @missing_person = Person.all
    @hash = Gmaps4rails.build_markers(@missing_person) do |person, marker|
      marker.lat person.lat
      marker.lng person.long
      marker.infowindow "Login for additional information"
    end
  end
end
