Given(/^there is a place called "(.*?)"$/) do |arg1|
  Place.make! :name => arg1
end

When(/^I go to "(.*?)"$/) do |arg1|
  visit(path(arg1))
end

Then(/^I should see "(.*?)" on the map$/) do |arg1|
  page.execute_script("for(var i=0; i<Gmaps.map.markers.length; i++){ if(Gmaps.map.markers[i].description == \"#{arg1}\"){return true;} }; return false;").should be_true
end
