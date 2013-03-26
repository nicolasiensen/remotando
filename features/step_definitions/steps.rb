Given(/^there is a place called "(.*?)"$/) do |arg1|
  Place.make! :name => arg1
end

When(/^I go to "(.*?)"$/) do |arg1|
  visit(path(arg1))
end
