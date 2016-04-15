class OverviewController < ApplicationController

    before_action :authenticate_user!
    before_action :user_signed_in?
    before_action :current_user
    before_action :user_session

end
