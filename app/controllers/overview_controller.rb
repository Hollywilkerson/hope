class OverviewController < ApplicationController
  before_action :authenticate_user!

  def index
    @missing_people = Person.all
    @hash = Gmaps4rails.build_markers(@missing_people) do |person, marker|
      #marker.infowindow render_to_string(:partial => '/overview/infowindow')
      marker.lat person.lat
      marker.lng person.long
    end
  end
end

#EXAMPLE
#def index
  #@cities = City.all
  #@json = @cities.to_gmaps4rails do |city, marker|
   # marker.infowindow render_to_string(:partial => "/cities/infowindow", :locals => { :city => city})
   # marker.title "#{city.name}"
    #marker.json({ :population => city.population})
   # marker.picture({:picture => "http://mapicons.nicolasmollet.com/     wp-content/uploads/mapicons/shape-default/color-3875d7/shapeco     lor-color/shadow-1/border-dark/symbolstyle-contrast/symbolshad     owstyle-dark/gradient-iphone/information.png",
    #  :width => 32,
     # :height => 32})
 # end
#end

#https://andyglassblog.wordpress.com/2012/07/06/google-maps-for-rails-with-gmaps4-rails-tutorial-on-how-to-post-and-filter-locations/
