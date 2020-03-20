Given(/^I am on the homepage$/) do
  find('h1', :text => "Welcome to MyRapName.com")
end

# Then(/^I should see an input field for firstname"$/) do |field, firstname|
Then /^I should( not)? see a field "([^"]*)"$/ do |negate, name|
expectation = negate ? :should_not : :should
begin
  field = find_field(name)
end
# field.send(expectation, be_present)
end
# end
