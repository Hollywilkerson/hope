class OverviewController < ApplicationController
  before_action :authenticate_user!
  before_action :user_signed_in?
  before_action :current_user
  before_action :user_session

#  @users = User.all
 # @hash = Gmaps4rails.build_markers(@users) do |user, marker|
 #   marker.lat user.latitude
  #  marker.lng user.longitude
#  end
end
