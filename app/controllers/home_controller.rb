class HomeController < ApplicationController
  def index
    @missing_people = [
      {lat: 43, lng: 3.5},
      {lat: 45, lng: 4},
      {lat: 47, lng: 3.5},
      {lat: 49, lng: 4},
      {lat: 51, lng: 3.5}
    ]
  end

#  @users = User.all
#  @hash = Gmaps4rails.build_markers(@users) do |user, marker|
#    marker.lat user.latitude
#    marker.lng user.longitude
#  end
end
