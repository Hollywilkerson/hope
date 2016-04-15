class OverviewController < ApplicationController
  before_action :authenticate_user!

  def index
    @missing_people = [
      { lat: 43, lng: 3.5},
      { lat: 45, lng: 4},
      { lat: 47, lng: 3.5},
      { lat: 49, lng: 4},
      { lat: 51, lng: 3.5}
    ]
  end
end
