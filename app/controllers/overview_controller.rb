class OverviewController < ApplicationController
  before_action :authenticate_user!

  def index
    @missing_people = Person.all.take(5)
    @hash = Gmaps4rails.build_markers(@missing_people) do |person, marker|
      marker.lat person.lat
      marker.lng person.long
      marker.infowindow person.fname + " " + person.lname
    end
  end
end


