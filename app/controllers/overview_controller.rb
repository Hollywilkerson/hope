class OverviewController < ApplicationController
  before_action :authenticate_user!

  def index
    @missing_people = Person.all
    @hash = Gmaps4rails.build_markers(@missing_people) do |person, marker|
      marker.lat person.lat
      marker.lng person.long
    end
  end
end
