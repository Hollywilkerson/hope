class OverviewController < ApplicationController
  before_action :authenticate_user!
  @missing_people = [
    {lat: 40, lng: -105},
    {lat: 39.7392, lng: -104.991},
    {lat: 38.125, lng: -103.11},
    {lat: 39.2555, lng: -103.13},
    {lat: 38.17, lng: -105.111},
    {lat: 39.71192, lng: -103.98}
  ]
end



