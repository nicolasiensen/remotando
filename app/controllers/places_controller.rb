class PlacesController < InheritedResources::Base
  before_filter only: [:index] do
    @gmaps_json = Place.all.to_gmaps4rails do |place, marker|
      marker.infowindow(render_to_string(partial: "/places/place", locals: { place: place}))
      marker.picture({picture: "http://i.imgur.com/vG8elJi.png?1", width: 32, height: 40})
    end
  end
end
