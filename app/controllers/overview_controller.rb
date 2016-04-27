class OverviewController < ApplicationController
  before_action :authenticate_user!

  def index

    @missing_person = Person.all
    @hash = Gmaps4rails.build_markers(@missing_person) do |person, marker|


      marker.lat person.lat
      marker.lng person.long
      marker.infowindow render_to_string(partial: '/overview/missing_person', locals: {my_person: person})

    end

    #http://stackoverflow.com/questions/10418435/place-a-link-within-a-infowindow-using-gmaps4rails
      def show
        @missing_person = Person.find(params[:id])
      end
  end
end
